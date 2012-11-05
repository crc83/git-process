#def require_all(path)
#  glob = File.join(File.dirname(__FILE__), path, '*.rb')
#  puts "glob = #{glob}"
#  Dir[glob].each do |f|
#    #require f
#    puts "Dir = #{f}"
#  end
#end

#require_all "git-process"

#dir = File.expand_path(File.join(File.dirname(__FILE__), 'git-process'))
#puts "dir = #{dir}"
#$LOAD_PATH.unshift(dir)
#puts "$LOAD_PATH = #{$LOAD_PATH}"
#Dir[File.join(dir, "*.rb")].each {|file|
#  puts "git-process/#{File.basename(file, '.rb')}"
#  require "git-process/#{File.basename(file, '.rb')}" }
#puts "$LOAD_PATH = #{$LOAD_PATH}"

#Dir["#{File.expand_path('git-process', __FILE__)}/*.rb"].each do |file|
#  require file
#end

#puts "Dir = #{File.expand_path('git-process', __FILE__)}"



#puts "$LOAD_PATH = #{$LOAD_PATH}"


require 'git-process/sync'
require 'git-process/new_fb'
require 'git-process/rebase_to_master'
require "git-process/support/GitRepoHelper"