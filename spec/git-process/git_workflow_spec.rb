require "spec_helper"

describe "Sandbox for script #1" do
  include GitRepoHelper

  # before(:each) do
  #   create_files(['.gitignore'])
  #   gitprocess.commit('initial')
  # end


  # after(:each) do
  #   # rm_rf(tmpdir)
  # end

  describe "Open feature branch" do

    def log_level
      Logger::ERROR
      # Logger::INFO
    end


    it "should create feature branch and clone master" do  
      create_files(['.gitignore'])
      gitprocess.commit('initial')    
      puts "Curr dir #{gitprocess.workdir}"
      gitprocess.branches.current.name.should == 'master'
      
      puts gitprocess.branches.current.class
      puts gitprocess.branches.names


      # gp = clone('master')      
      # gp.checkout('fb', :new_branch => 'master')
      # puts gp.branches.names

      # change_file_and_commit('Readme.txt', 'Content', gp)
      # # gp.change_file_and_commit(['Readme.txt'])
      # puts "clone #{gp.log}"
      # puts "origin #{gitprocess.log}"
    end
    
  end
end