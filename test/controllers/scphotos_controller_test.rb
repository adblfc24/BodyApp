require 'test_helper'

class ScphotosControllerTest < ActionController::TestCase
  setup do
    @scphoto = scphotos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scphotos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scphoto" do
    assert_difference('Scphoto.count') do
      post :create, scphoto: { description: @scphoto.description, file: @scphoto.file, title: @scphoto.title }
    end

    assert_redirected_to scphoto_path(assigns(:scphoto))
  end

  test "should show scphoto" do
    get :show, id: @scphoto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scphoto
    assert_response :success
  end

  test "should update scphoto" do
    patch :update, id: @scphoto, scphoto: { description: @scphoto.description, file: @scphoto.file, title: @scphoto.title }
    assert_redirected_to scphoto_path(assigns(:scphoto))
  end

  test "should destroy scphoto" do
    assert_difference('Scphoto.count', -1) do
      delete :destroy, id: @scphoto
    end

    assert_redirected_to scphotos_path
  end
end
