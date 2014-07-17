require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "signup confirmation" do
    assert_difference 'ActionMailer::Base.deliveries.size', +1 do
      post :email, email: 'friend@example.com'
    end
    email = ActionMailer::Base.deliveries.last
 
    assert_equal "You have been invited by me@example.com", email.subject
    assert_equal 'friend@example.com', email.to[0]
    assert_match(/Hi friend@example.com/, email.body)
  end
end
