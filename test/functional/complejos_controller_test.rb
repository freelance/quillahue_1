require 'test_helper'

class ComplejosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complejos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complejo" do
    assert_difference('Complejo.count') do
      post :create, :complejo => { }
    end

    assert_redirected_to complejo_path(assigns(:complejo))
  end

  test "should show complejo" do
    get :show, :id => complejos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => complejos(:one).to_param
    assert_response :success
  end

  test "should update complejo" do
    put :update, :id => complejos(:one).to_param, :complejo => { }
    assert_redirected_to complejo_path(assigns(:complejo))
  end

  test "should destroy complejo" do
    assert_difference('Complejo.count', -1) do
      delete :destroy, :id => complejos(:one).to_param
    end

    assert_redirected_to complejos_path
  end
end
