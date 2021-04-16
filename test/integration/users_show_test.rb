require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:michael)
    @non_activated_user = users(:brian)
  end
  
  test "redirect to root_url login as non_activated_user" do
    log_in_as(@user)
    get user_path(@non_activated_user)
    assert_redirected_to root_url
  end
end
