require 'spec_helper'

describe User do

	before do
    @user = User.new(username: "JeffBone", email: "jeff@jeffbone.com", password: "foobar23", password_confirmation: "foobar23")
  	end


	describe "should respond to methods" do
	it { should respond_to(:relationships) }
	it { should respond_to(:followed_users) }
	it { should respond_to(:reverse_relationships) }
	it { should respond_to(:followers) }
	it { should respond_to(:following?) }
	it { should respond_to(:follow!) }
	end

	describe "following" do

		let(:other_user) { FactoryGirl.create(:user) }
		before do
			@user.save
			@user.follow!(other_user)
		end

		it { should be_following(other_user) }
		its(:followed_users) { should include(other_user) }

		describe "followed user" do
			subject { other_user }
			its(:followers) { should include(@user) }
		end

		describe "and unfollowing" do
			before { @user.unfollow!(other_user) }
			its(:followed_users) { should_not include(other_user) }
		end
	end

end
