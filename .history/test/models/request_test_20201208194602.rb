require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @request = Request.new(description: "Simon", last_name: "Sinek", email: "simon@yahoo.com", password: "simonsinek")

  end






end
