require 'spec_helper'

describe Project do


	it "can set a 'name' attribute" do

	project = Project.new 
	project.name = "New Project"
	project.name.should == "New Project" 
	end

	it "should be part of the Project class" do 

	project = Project.new 
	project.should be_instance_of(Project)
	end

end
