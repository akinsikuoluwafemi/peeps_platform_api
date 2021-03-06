require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(first_name: "Simon", last_name: "Sinek", email: "simon@yahoo.com", password: "simonsinek")
  end

  test "user should be valid" do
    assert @user.valid?, "The user is not valid"
  end
  
  test "firstname should be present" do 
    @user.first_name = " "
    assert_not @user.valid?, "first_name should be present"
  end

  test "firstname should not be too short" do
    @user.first_name = "a" * 3
    assert_not @user.valid?, "first_name is too short"
  end

    
  test "lastname should be present" do 
      @user.last_name = " "
      assert_not @user.valid?, "last_name should be present"
  end

  test "lastname should not be too short" do
    @user.last_name = "a" * 3
    assert_not @user.valid?, "last_name is too short"
  end

  test "email should be present" do 
      @user.email = " "
      assert_not @user.valid?, "last_name should be present"
  end

  test "should have format of email address" do 

  end


  test "email should be unique" do 

  end








end
