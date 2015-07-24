namespace :solve do
  desc "Solve all problems available in lib/problems"
  task :all_problems do
    Dir.glob('./lib/problems/*.rb').each { |file| require file}
    
    puts "%-10s %-14s %-10s %-10s %-11s %-10s" % ["Problem", "Answer", "User", "System", "Total", "Real"]
    
    ProjectEuler::Problem.descendants.each do |problem|
      p = problem.new
  
      answer = 0
      time_taken = Benchmark.measure { answer = p.solve }

      problem_number = problem.name.split('m').last
      
      puts "%-10s %-12s %s" % [problem_number, answer, time_taken]
    end
  end
end