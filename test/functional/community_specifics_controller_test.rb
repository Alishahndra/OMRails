require 'test_helper'

class CommunitySpecificsControllerTest < ActionController::TestCase
  setup do
    @community_specific = community_specifics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:community_specifics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create community_specific" do
    assert_difference('CommunitySpecific.count') do
      post :create, community_specific: { Content: @community_specific.Content, description: @community_specific.description }
    end

    assert_redirected_to community_specific_path(assigns(:community_specific))
  end

  test "should show community_specific" do
    get :show, id: @community_specific
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @community_specific
    assert_response :success
  end

  test "should update community_specific" do
    put :update, id: @community_specific, community_specific: { Content: @community_specific.Content, description: @community_specific.description }
    assert_redirected_to community_specific_path(assigns(:community_specific))
  end

  test "should destroy community_specific" do
    assert_difference('CommunitySpecific.count', -1) do
      delete :destroy, id: @community_specific
    end

    assert_redirected_to community_specifics_path
  end
end
