require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(email: "user@example.com", password: "password")
  end

  test "Email address should be unique" do
   @duplicate_user = @user.dup
   @user.save 
   assert_not duplicate_user.valid?
  end
end
