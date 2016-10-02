#!/usr/bin/env ruby
require "optparse"
require "fileutils"

print Dir.pwd
print "\n"
print ARGV[0]
print "\n"

current_dir = Dir[Dir.pwd]
unless File.file?(Dir.pwd + "/" + ARGV[0] + "/" + ".rubocop.yml")
  FileUtils.cp(Dir.pwd + "/" + ".rubocop.yml",Dir.pwd + "/" + ARGV[0]) 
end

#raise 'No code added yet'
