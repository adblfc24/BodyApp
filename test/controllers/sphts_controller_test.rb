require 'test_helper'

class SphtsControllerTest < ActionController::TestCase
  setup do
    @spht = sphts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sphts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spht" do
    assert_difference('Spht.count') do
      post :create, spht: { description: @spht.description, file: @spht.file, title: @spht.title }
    end

    assert_redirected_to spht_path(assigns(:spht))
  end

  test "should show spht" do
    get :show, id: @spht
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spht
    assert_response :success
  end

  test "should update spht" do
    patch :update, id: @spht, spht: { description: @spht.description, file: @spht.file, title: @spht.title }
    assert_redirected_to spht_path(assigns(:spht))
  end

  test "should destroy spht" do
    assert_difference('Spht.count', -1) do
      delete :destroy, id: @spht
    end

    assert_redirected_to sphts_path
  end
end
