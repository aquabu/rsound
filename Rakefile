
require File.expand_path(File.dirname(__FILE__)) + '/init.rb'
task :default => [:spec]

require 'rake/testtask'
require 'spec/rake/spectask'

namespace :spec do
  desc "Run all specs in spec directory with RCov (excluding plugin specs)"
  Spec::Rake::SpecTask.new(:rcov) do |t| 
    t.spec_opts = ['--options', "\"#{RSOUND_ROOT}/spec/spec.opts\""]
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.rcov = true
    t.rcov_opts = lambda do
      IO.readlines("#{RSOUND_ROOT}/spec/rcov.opts").map {|l| l.chomp.split " "}.flatten
    end 
  end 

  desc "Print Specdoc for all specs (excluding plugin specs)"
  Spec::Rake::SpecTask.new(:doc) do |t| 
    t.spec_opts = ["--format", "specdoc", "--dry-run"]
    t.spec_files = FileList['spec/**/*_spec.rb']
  end 

  [:units].each do |sub|
    desc "Run the code examples in spec/#{sub}"
    Spec::Rake::SpecTask.new(sub) do |t|
      t.spec_opts = ['--options', "\"#{RSOUND_ROOT}/spec/spec.opts\""]
      t.spec_files = FileList["spec/#{sub}/**/*_spec.rb"]
    end
  end
end
