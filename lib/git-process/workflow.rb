require 'git-process/git_process'

module GitProc

  class Workflow < Process

    def initialize(dir, opts)
      @branch_name = opts[:branch_name]
      super
    end


    def runner
      mybranches = branches()
      on_parking = (mybranches.parking == mybranches.current)

      if on_parking
        new_branch = checkout(@branch_name, :new_branch => '_parking_')
        mybranches.parking.delete!
        new_branch
      else
        checkout(@branch_name, :new_branch => integration_branch)
      end
    end

  end

end
