require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @message = Message.new(body: "Hello there")
    
  end


  # test "message should be valid" do 
  #   assert @message.valid?, "The message is not valid"

  # end

  test "body should be present" do
    @message.body
  end

  # test "user_id should be present" do
    
  # end

  # test "room_id should be present" do
    
  # end



end
