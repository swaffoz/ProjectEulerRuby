namespace :solve do
  desc "Solve all problems available in lib/problems"
  task :all_problems do
    Dir.glob('./lib/problems/problem*.rb').each { |file| require file}
    
    puts "%-10s %-14s %-10s %-10s %-11s %-10s" % ["Problem", "Answer", "User", "System", "Total", "Real"]
    
    ProjectEuler::Problem.descendants.each do |problem|
      p = problem.new
      problem_number = problem.name.split('m').last
      
      answer = 0
      max_time = ENV["MAX_TIME"].to_i || 30
      
      begin
        time_taken = Benchmark.measure { Timeout.timeout(max_time) { answer = p.solve } }
        puts "%-10s %-12s %s" % [problem_number, answer, time_taken]
      rescue Timeout::Error
        puts "%-10s %-12s %s" % [problem_number, "Error", "Timed Out"]
      end
    end
  end
end