require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  
  def setup
    @room = Room.new(name: "I want to get a maid")
  end

  test "room should be valid" do
    assert @room.valid?, "The room is not valid"
    
  end

  test "name should be present" do
    @room.name = " "
    assert_not @room.valid?, "name should be present"

  end



end
