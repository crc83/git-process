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

    desc "br", "branch name"
    def br(name)
      puts "branch name #{name}"
      proc = GitProc::Process.new('.', :verbose => true)
      puts proc.branch(name)
    end

    desc "co", "checkout name"
    def co(name)      
      proc = GitProc::Process.new('.', :verbose => true)
      puts proc.checkout(name)
    end

  end
end