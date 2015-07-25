namespace :solve do
  desc "Solve a specific Project Euler problem, given its number"
  task :problem, :problem_number do |t, args|
    if args[:problem_number].nil? 
      puts "Please specify a Project Euler problem number to solve."
      exit
    end
    
    begin
      require "./lib/problems/problem#{args[:problem_number]}.rb"
    rescue LoadError
      puts "Could not find Problem #{args[:problem_number]}\n"
      exit
    end
    
    problem = Object.const_get("Problem#{args[:problem_number]}").new
    
    answer = 0
    max_time = ENV["MAX_TIME"].to_i || 30
    
    puts "%-10s %-14s %-10s %-10s %-11s %-10s" % ["Problem", "Answer", "User", "System", "Total", "Real"]
    
    begin
      time_taken = Benchmark.measure { Timeout.timeout(max_time) { answer = problem.solve } }
      puts "%-10s %-12s %s" % [args[:problem_number], answer, time_taken]
    rescue Timeout::Error
      puts "%-10s %-12s %s" % [args[:problem_number], "Error", "Timed Out"]
    end
  end
end