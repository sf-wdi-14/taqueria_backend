require 'test_helper'

class TacosControllerTest < ActionController::TestCase
  setup do
    @taco = tacos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tacos)
  end

  test "should create taco" do
    assert_difference('Taco.count') do
      post :create, taco: { meat: @taco.meat, sauce: @taco.sauce, vegetable: @taco.vegetable }
    end

    assert_response 201
  end

  test "should show taco" do
    get :show, id: @taco
    assert_response :success
  end

  test "should update taco" do
    put :update, id: @taco, taco: { meat: @taco.meat, sauce: @taco.sauce, vegetable: @taco.vegetable }
    assert_response 204
  end

  test "should destroy taco" do
    assert_difference('Taco.count', -1) do
      delete :destroy, id: @taco
    end

    assert_response 204
  end
end
