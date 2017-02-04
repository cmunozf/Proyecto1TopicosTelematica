require 'test_helper'

class VerLibrosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ver_libros_index_url
    assert_response :success
  end

end
