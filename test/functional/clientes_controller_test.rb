require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientes" do
    assert_difference('Clientes.count') do
      post :create, :clientes => { }
    end

    assert_redirected_to clientes_path(assigns(:clientes))
  end

  test "should show clientes" do
    get :show, :id => clientes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => clientes(:one).to_param
    assert_response :success
  end

  test "should update clientes" do
    put :update, :id => clientes(:one).to_param, :clientes => { }
    assert_redirected_to clientes_path(assigns(:clientes))
  end

  test "should destroy clientes" do
    assert_difference('Clientes.count', -1) do
      delete :destroy, :id => clientes(:one).to_param
    end

    assert_redirected_to clientes_path
  end
end
