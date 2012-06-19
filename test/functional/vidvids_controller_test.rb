require 'test_helper'

class VidvidsControllerTest < ActionController::TestCase
  setup do
    @vidvid = vidvids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vidvids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vidvid" do
    assert_difference('Vidvid.count') do
      post :create, vidvid: { title1: @vidvid.title1, user_id: @vidvid.user_id, viddy1: @vidvid.viddy1, video_id: @vidvid.video_id }
    end

    assert_redirected_to vidvid_path(assigns(:vidvid))
  end

  test "should show vidvid" do
    get :show, id: @vidvid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vidvid
    assert_response :success
  end

  test "should update vidvid" do
    put :update, id: @vidvid, vidvid: { title1: @vidvid.title1, user_id: @vidvid.user_id, viddy1: @vidvid.viddy1, video_id: @vidvid.video_id }
    assert_redirected_to vidvid_path(assigns(:vidvid))
  end

  test "should destroy vidvid" do
    assert_difference('Vidvid.count', -1) do
      delete :destroy, id: @vidvid
    end

    assert_redirected_to vidvids_path
  end
end
