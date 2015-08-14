require 'test_helper'

class FigsControllerTest < ActionController::TestCase
  setup do
    @fig = figs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:figs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fig" do
    assert_difference('Fig.count') do
      post :create, fig: { url: @fig.url, user_id: @fig.user_id }
    end

    assert_redirected_to fig_path(assigns(:fig))
  end

  test "should show fig" do
    get :show, id: @fig
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fig
    assert_response :success
  end

  test "should update fig" do
    patch :update, id: @fig, fig: { url: @fig.url, user_id: @fig.user_id }
    assert_redirected_to fig_path(assigns(:fig))
  end

  test "should destroy fig" do
    assert_difference('Fig.count', -1) do
      delete :destroy, id: @fig
    end

    assert_redirected_to figs_path
  end
end
