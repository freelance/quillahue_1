require 'test_helper'

class PromotionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotion" do
    assert_difference('Promotion.count') do
      post :create, :promotion => { }
    end

    assert_redirected_to promotion_path(assigns(:promotion))
  end

  test "should show promotion" do
    get :show, :id => promotions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => promotions(:one).to_param
    assert_response :success
  end

  test "should update promotion" do
    put :update, :id => promotions(:one).to_param, :promotion => { }
    assert_redirected_to promotion_path(assigns(:promotion))
  end

  test "should destroy promotion" do
    assert_difference('Promotion.count', -1) do
      delete :destroy, :id => promotions(:one).to_param
    end

    assert_redirected_to promotions_path
  end
end
