require 'test_helper'

class MeishikisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meishikis_index_url
    assert_response :success
  end

end
