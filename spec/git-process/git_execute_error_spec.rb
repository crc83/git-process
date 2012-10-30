require "spec_helper"

describe GitProc::GitExecuteError do

  describe "#initialize" do    

    it "should return proper single message with single arg" do
      begin 
        message = "Error Message"
        raise GitProc::GitExecuteError.new(message)
      
      rescue GitProc::GitExecuteError => error    
        error.message.should == message
      end
      
    end 

    it "should return proper single message with multiple args" do
      begin 
        
        message1 = "Error Message 1"
        message2 = "Error Message 2"
        raise GitProc::GitExecuteError.new(message1, message2)
      
      rescue GitProc::GitExecuteError => error        
        error.message.should == (message1 + ':' + message2)
      end      
    end 

    it "should return proper command and error message with two args" do
      begin 
        
        git_command = "git command"
        error_message = "Error Message"
        raise GitProc::GitExecuteError.new(git_command, error_message)
      
      rescue GitProc::GitExecuteError => error    
        error.command.should == git_command
        error.error_message.should == error_message
      end      
    end 

    it "should return proper command and error message with one arg" do
      begin 
        
        git_command = "git command"
        error_message = "Error Message"
        raise GitProc::GitExecuteError.new(git_command)
      
      rescue GitProc::GitExecuteError => error    
        error.command.should == git_command
        error.error_message.should be_empty
        error.message.should == git_command
      end      
    end 

  end
end