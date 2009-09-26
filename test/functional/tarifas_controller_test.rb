require 'test_helper'

class TarifasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tarifas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tarifas" do
    assert_difference('Tarifas.count') do
      post :create, :tarifas => { }
    end

    assert_redirected_to tarifas_path(assigns(:tarifas))
  end

  test "should show tarifas" do
    get :show, :id => tarifas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tarifas(:one).to_param
    assert_response :success
  end

  test "should update tarifas" do
    put :update, :id => tarifas(:one).to_param, :tarifas => { }
    assert_redirected_to tarifas_path(assigns(:tarifas))
  end

  test "should destroy tarifas" do
    assert_difference('Tarifas.count', -1) do
      delete :destroy, :id => tarifas(:one).to_param
    end

    assert_redirected_to tarifas_path
  end
end
