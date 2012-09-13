$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
$LOAD_PATH.unshift File.expand_path('..', __FILE__)

require "git-process"

Dir["#{File.expand_path('../support', __FILE__)}/*.rb"].each do |file|
  require file
end
