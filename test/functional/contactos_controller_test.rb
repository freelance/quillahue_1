require 'test_helper'

class ContactosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contactos" do
    assert_difference('Contactos.count') do
      post :create, :contactos => { }
    end

    assert_redirected_to contactos_path(assigns(:contactos))
  end

  test "should show contactos" do
    get :show, :id => contactos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => contactos(:one).to_param
    assert_response :success
  end

  test "should update contactos" do
    put :update, :id => contactos(:one).to_param, :contactos => { }
    assert_redirected_to contactos_path(assigns(:contactos))
  end

  test "should destroy contactos" do
    assert_difference('Contactos.count', -1) do
      delete :destroy, :id => contactos(:one).to_param
    end

    assert_redirected_to contactos_path
  end
end
