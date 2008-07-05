task :default => [:test]

require 'rake/testtask'

# TODO: make this standard way of running rake tasks work. Currently it's failing...
# Rake::TestTask.new do |t|
#   t.test_files = FileList['test/unittests/*.rb']
#   t.verbose = true
# end

task :test do
  base_path = "test/unittests/"  
  Dir.foreach(base_path) do |f|
    this_file = base_path + f
    ruby this_file unless File.directory?(this_file) || ["test_helper.rb"].include?(f)
  end
end
