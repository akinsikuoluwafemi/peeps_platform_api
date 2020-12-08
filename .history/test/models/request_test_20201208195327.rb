require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @request = Request.new(description: "I need help to buy a new house ", lat: 1.5, lng: 1.5, request_type: "material-need", fulfilled: false)

  end


  test "request should be valid" do
    assert @request.valid?, "The request is not valid"
    
  end




end
