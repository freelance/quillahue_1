require 'test_helper'

class CabanasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cabanas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cabana" do
    assert_difference('Cabana.count') do
      post :create, :cabana => { }
    end

    assert_redirected_to cabana_path(assigns(:cabana))
  end

  test "should show cabana" do
    get :show, :id => cabanas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cabanas(:one).to_param
    assert_response :success
  end

  test "should update cabana" do
    put :update, :id => cabanas(:one).to_param, :cabana => { }
    assert_redirected_to cabana_path(assigns(:cabana))
  end

  test "should destroy cabana" do
    assert_difference('Cabana.count', -1) do
      delete :destroy, :id => cabanas(:one).to_param
    end

    assert_redirected_to cabanas_path
  end
end
