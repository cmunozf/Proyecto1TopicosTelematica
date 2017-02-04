require 'test_helper'

class EliminarLibroControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eliminar_libro_index_url
    assert_response :success
  end

end
