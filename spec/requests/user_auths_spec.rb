require 'spec_helper'

describe "Devise User Pages" do

	subject { page }
	
	describe "Profile Page" do 
		let(:user) {FactoryGirl.create(:user)}
		before {visit users_show_path(user)}
		it { should have_content("Sign In") }
		it { should have_title("YAWLr | #{user.name}") }
    end
end