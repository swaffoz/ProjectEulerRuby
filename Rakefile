require 'benchmark'
require 'timeout'
require './lib/project_euler'

Dir.glob('./lib/tasks/**/*.rake').each { |file| import file }

task :default => 'solve:all_problems'