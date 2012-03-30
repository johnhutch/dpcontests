require 'spec_helper'

describe "PasswordResets" do
  it "emails user when requesting password reset" do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    click_link I18n.t('links.forgot_password')
    fill_in "Email", :with => user.email
    click_button I18n.t('buttons.reset_password')
    current_path.should eq(new_user_session_path)
    page.should have_content( I18n.t('devise.passwords.send_instructions') )
    last_email.to.should include(user.email)
  end

  it "does not email invalid user when requesting password reset" do
    visit new_user_session_path
    click_link I18n.t('links.forgot_password')
    fill_in "Email", :with => "nobody@example.com"
    click_button I18n.t('buttons.reset_password')
    page.should have_content( I18n.t('errors.messages.not_found') )
    last_email.should be_nil
  end

#  it "updates the user password when confirmation matches" do
#    user = FactoryGirl.create(:user, :password_reset_token => "something", :password_reset_sent_at => 1.hour.ago)
#    visit edit_password_reset_path(user.password_reset_token)
#    fill_in "Password", :with => "foobar"
#    click_button "Update Password"
#    page.should have_content("Password doesn't match confirmation")
#    fill_in "Password", :with => "foobar"
#    fill_in "Password confirmation", :with => "foobar"
#    click_button "Update Password"
#    page.should have_content("Password has been reset")
#  end
#
#  it "reports when password token has expired" do
#    user = FactoryGirl.create(:user, :password_reset_token => "something", :password_reset_sent_at => 5.hour.ago)
#    visit edit_password_reset_path(user.password_reset_token)
#    fill_in "Password", :with => "foobar"
#    fill_in "Password confirmation", :with => "foobar"
#    click_button "Update Password"
#    page.should have_content("Password reset has expired")
#  end
#
#  it "raises record not found when password token is invalid" do
#    lambda {
#      visit edit_password_reset_path("invalid")
#    }.should raise_exception(ActiveRecord::RecordNotFound)
#  end
end