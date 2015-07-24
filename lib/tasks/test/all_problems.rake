namespace :test do
  desc "Test all solutions available"
  task :all_problems do
    Dir.glob('./test/**/*_test.rb').each { |file| require file}
  end
end