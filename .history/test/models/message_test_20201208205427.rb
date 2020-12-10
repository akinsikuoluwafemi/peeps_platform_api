require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do

  def setup
    @message = Message.new(body: "Hello there", user_id: 3, room_id: 51)
    
  end


  test "message should be valid" do 
    assert @message.valid?, "The message is not valid"

  end

  test "body should be present" do
    @message.body = " "
    assert_not @message.valid?, "body should be present"

  end

  # test "user_id should be present" do
    
  # end

  # test "room_id should be present" do
    
  # end



end