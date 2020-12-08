require 'test_helper'

class RequestTest < ActiveSupport::TestCase

  def setup
    @request = Request.new(description: "I need help to buy a new house ", lat: 1.8, lng: 1.7, request_type: "material-need", fulfilled: false)
  end


  test "request should be valid" do
    assert @request.valid?, "The request is not valid"
  end

  test "description should be present" do
    @request.description = " "
    assert_not @user.valid?, "first_name should be present"

  end






end
