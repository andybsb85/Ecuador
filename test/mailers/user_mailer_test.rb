require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "signup confirmation" do
    email = UserMailer.signup_confirmation(@user).deliver
    
    assert_not ActionMailer::Base.deliveries.empty?
    assert_equal ["me@example.com"], email.from
    assert_equal ["to@example.com"], email.to
    assert_equal "Signup confirmation", email.subject
    assert_equal read_fixture('signup confirmation').join, email.body.to_s
  end

end
