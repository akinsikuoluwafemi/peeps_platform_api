require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @request = Request.new(description: "I need help to buy a new house ", lat: 1.5, lng: 1.5, password: "simonsinek")

  end






end
