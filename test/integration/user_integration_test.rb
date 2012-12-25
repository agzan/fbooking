require "minitest_helper"

describe "Post integration" do


  it "sign in" do
     User.create!(:email => 'admin@us.com', :password => 'password')
    visit admin_posts_path
    within("form#new_user") do
      fill_in 'user_email', :with => 'admin@us.com'
	  fill_in 'user_password', :with => 'password'
    end
    click_link_or_button 'Sign in'
	  visit admin_posts_path
	  save_and_open_page
  end
end