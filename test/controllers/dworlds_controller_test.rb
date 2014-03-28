require 'test_helper'

class DworldsControllerTest < ActionController::TestCase
  setup do
    @dworld = dworlds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dworlds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dworld" do
    assert_difference('Dworld.count') do
      post :create, dworld: { datesend: @dworld.datesend, email: @dworld.email, name: @dworld.name, question: @dworld.question }
    end

    assert_redirected_to dworld_path(assigns(:dworld))
  end

  test "should show dworld" do
    get :show, id: @dworld
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dworld
    assert_response :success
  end

  test "should update dworld" do
    patch :update, id: @dworld, dworld: { datesend: @dworld.datesend, email: @dworld.email, name: @dworld.name, question: @dworld.question }
    assert_redirected_to dworld_path(assigns(:dworld))
  end

  test "should destroy dworld" do
    assert_difference('Dworld.count', -1) do
      delete :destroy, id: @dworld
    end

    assert_redirected_to dworlds_path
  end
end
