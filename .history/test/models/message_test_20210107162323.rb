require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  def setup
    @message = Message.new(body: "Hello there, how are you")
  end


  test "message should be valid" do 
    assert_not @message.valid?
  end

  test "body should be present" do
    @message.body = " "
    assert_not @message.valid?, "body should be present"

  end




end
