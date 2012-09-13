$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift File.expand_path('..', __FILE__)

Dir["#{File.expand_path('../support', __FILE__)}/*.rb"].each do |file|
  require file
end
