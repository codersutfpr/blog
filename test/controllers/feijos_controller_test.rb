require 'test_helper'

class FeijosControllerTest < ActionController::TestCase
  setup do
    @feijo = feijos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feijos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feijo" do
    assert_difference('Feijo.count') do
      post :create, feijo: { preco: @feijo.preco, tipo: @feijo.tipo }
    end

    assert_redirected_to feijo_path(assigns(:feijo))
  end

  test "should show feijo" do
    get :show, id: @feijo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feijo
    assert_response :success
  end

  test "should update feijo" do
    patch :update, id: @feijo, feijo: { preco: @feijo.preco, tipo: @feijo.tipo }
    assert_redirected_to feijo_path(assigns(:feijo))
  end

  test "should destroy feijo" do
    assert_difference('Feijo.count', -1) do
      delete :destroy, id: @feijo
    end

    assert_redirected_to feijos_path
  end
end
