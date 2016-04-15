require 'test_helper'

class ListWinesTest < ActionDispatch::IntegrationTest
  test 'listing wines without content' do
    get '/wines'

    assert_equal 200, response.status
    assert_equal Mime[:json], response.content_type
  end

  test 'listing wines with content' do
    Wine.create!(name: "Test Wine 1", varietal: "Chardonnay", year: 2014, vinyard: "Test Vinyard 1")
    Wine.create!(name: "Test Wine 2", varietal: "Shiraz", year: 2013, vinyard: "Test Vinyard 2")

    get '/wines'

    assert_equal 200, response.status
    assert_equal Mime[:json], response.content_type
    assert_equal Wine.count, JSON.parse(response.body).size
  end
end
