require 'test_helper'

class ChargeFlowTest < Capybara::Rails::TestCase

  test 'charge index' do
    visit charges_path

    assert find("ul#failed")
    assert find("ul#disputed")
    assert find("ul#successfull")

    assert_equal 5, all("ul#failed li").count
    assert_equal 5, all("ul#disputed li").count
    assert_equal 10, all("ul#successfull li").count

  end
end