require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @message = Message.new(body: 'Hello there', user_id: 7, room_id: )
  end



end
