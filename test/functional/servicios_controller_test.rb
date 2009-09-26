require 'test_helper'

class ServiciosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicios" do
    assert_difference('Servicios.count') do
      post :create, :servicios => { }
    end

    assert_redirected_to servicios_path(assigns(:servicios))
  end

  test "should show servicios" do
    get :show, :id => servicios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => servicios(:one).to_param
    assert_response :success
  end

  test "should update servicios" do
    put :update, :id => servicios(:one).to_param, :servicios => { }
    assert_redirected_to servicios_path(assigns(:servicios))
  end

  test "should destroy servicios" do
    assert_difference('Servicios.count', -1) do
      delete :destroy, :id => servicios(:one).to_param
    end

    assert_redirected_to servicios_path
  end
end
