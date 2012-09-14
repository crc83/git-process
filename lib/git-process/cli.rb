require "thor"

module GitProc  
  class CLI < Thor

    def initialize(*)
      super
      # @git = DevEdge::Git::GitHelper.new
    end    

    desc "test", "Test command"
    def test
      puts "Hello I'm inside test"
    end
  end
end