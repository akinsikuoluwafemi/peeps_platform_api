require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @message = Message.new(body: "Hello there", user_id: 7, room_id: 50)
    @user = User.new(first_name: "Simon", last_name: "Sinek", email: "simon@yahoo.com", password: "simonsinek")
    
  end


  test "message should be valid" do 
    assert @message.valid?, "The message is not valid"

  end

  test "body should be present" do
    
  end

  test "user_id should be present" do
    
  end

  test "room_id should be present" do
    
  end



end