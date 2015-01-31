require 'test_helper'

class HandicraftsControllerTest < ActionController::TestCase
  setup do
    @handicraft = handicrafts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:handicrafts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create handicraft" do
    assert_difference('Handicraft.count') do
      post :create, handicraft: { description: @handicraft.description, image: @handicraft.image, name: @handicraft.name, owner_name: @handicraft.owner_name, price: @handicraft.price }
    end

    assert_redirected_to handicraft_path(assigns(:handicraft))
  end

  test "should show handicraft" do
    get :show, id: @handicraft
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @handicraft
    assert_response :success
  end

  test "should update handicraft" do
    patch :update, id: @handicraft, handicraft: { description: @handicraft.description, image: @handicraft.image, name: @handicraft.name, owner_name: @handicraft.owner_name, price: @handicraft.price }
    assert_redirected_to handicraft_path(assigns(:handicraft))
  end

  test "should destroy handicraft" do
    assert_difference('Handicraft.count', -1) do
      delete :destroy, id: @handicraft
    end

    assert_redirected_to handicrafts_path
  end
end
