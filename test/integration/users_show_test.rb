require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest  # test "the truth" do
  
  def setup
    @non_activated_user = users(:marino)
  end
  
  test "should not show non activated users" do
    get user_path(@non_activated_user)
    assert_redirected_to root_url
  end
  
end
