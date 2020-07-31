require 'test_helper'

class ChargeTest < ActiveSupport::TestCase
  def setup
    @customer = customers :johny
  end

  test "full_name" do
    assert_equal "Johny Flow", @customer.full_name
  end
end
