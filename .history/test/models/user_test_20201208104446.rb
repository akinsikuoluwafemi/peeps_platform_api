require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(first_name: "David", last_name: "Junior", email: "david@yahoo.com", password: "davidjunior")

  end

  test "user should be valid" do
    assert (@user.valid?, "The user is not valid")
  end
  
  test "firstname should be present" do 
    @user.first_name = " "
    assert_not @user.valid?, 
  end

  test "firstname should not be too short" do
    
  end

    
  test "lastname should be present" do 

  end

  test "lastname should not be too short" do
    
  end

  test "email should be present" do 

  end

  test "should have format of email address" do 

  end


  test "email should be unique" do 

  end








end
