require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  
  def setup
    @room = Room.new(name: "I want to get a maid")
  end

  test "room should be valid" do
    assert @room.valid?, "The  is not valid"
    
  end



end
