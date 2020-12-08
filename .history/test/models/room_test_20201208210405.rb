require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  
  def setup
    @room = Room.new(name: "I want to get a maid")
  end

  test "room should be valid" do
    assert @room.valid?, "The room is not valid"
    
  end

  test "room should be present" do
    @room.name = " "
    assert_not @user.valid?, "first_name should be present"

  end



end
