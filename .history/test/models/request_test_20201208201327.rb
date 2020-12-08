require 'test_helper'

class RequestTest < ActiveSupport::TestCase

  def setup
  end


  test "request should be valid" do
    assert @request.valid?, "The request is not valid"
  end




end
