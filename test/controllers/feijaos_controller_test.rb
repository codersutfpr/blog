require 'test_helper'

class FeijaosControllerTest < ActionController::TestCase
  setup do
    @feijao = feijaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feijaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feijao" do
    assert_difference('Feijao.count') do
      post :create, feijao: { preco: @feijao.preco, tipo: @feijao.tipo }
    end

    assert_redirected_to feijao_path(assigns(:feijao))
  end

  test "should show feijao" do
    get :show, id: @feijao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feijao
    assert_response :success
  end

  test "should update feijao" do
    patch :update, id: @feijao, feijao: { preco: @feijao.preco, tipo: @feijao.tipo }
    assert_redirected_to feijao_path(assigns(:feijao))
  end

  test "should destroy feijao" do
    assert_difference('Feijao.count', -1) do
      delete :destroy, id: @feijao
    end

    assert_redirected_to feijaos_path
  end
end
