namespace :test do
  desc "Test a specific Project Euler solution, given its number"
  task :problem, :problem_number do |t, args|
    
    if args[:problem_number].nil? 
      puts "Please specify a Project Euler problem number to test."
      exit
    end
    
    begin
      require "./test/unit/problem#{args[:problem_number]}_tests.rb"
    rescue LoadError
      puts "Could not find unit tests for Problem #{args[:problem_number]}\n"
    end
    
    begin
      require "./test/spec/problem#{args[:problem_number]}_spec.rb"
    rescue LoadError
      puts "Could not find spec for Problem #{args[:problem_number]}\n"
    end
    
  end
end