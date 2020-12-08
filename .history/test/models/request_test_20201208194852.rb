require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @request = Request.new(description: "I need help to buy a new house ", lat: "Sinek", email: "simon@yahoo.com", password: "simonsinek")

  end






end
