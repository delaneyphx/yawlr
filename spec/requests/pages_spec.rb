require 'spec_helper'

describe "Pages" do
  
  describe "home page" do
    it "should provide a 200 response " do
      get root_url
      response.status.should be(200)
  end 
    it "Should have content 'Welcome to YAWLr'" do
    	visit root_url
    	expect(page).to have_content('Welcome to YAWLr')
    end

    it "Should have title 'YAWLr | Home'" do 
    	visit root_url
    	expect(page).to have_title('YAWLr | Home')
    end
  end

  describe 'support page' do

  	it "should have content'YAWLr Support'" do
  		visit support_path
  		expect(page).to have_content('YAWLr Customer Support')
  	end

    it "Should have title 'YAWLr | Support'" do 
    	visit support_path
    	expect(page).to have_title('YAWLr | Support')
    end
  end

  describe 'about page' do

  	it "Should have content 'Our Story'" do
  		visit about_path
  		expect(page).to have_content('Our Story')
  	end

  	it "Should have title 'YAWLr | Our Story'" do 
  		visit about_path
  		expect(page).to have_title("YAWLr | Our Story")
  	end
  end

end
