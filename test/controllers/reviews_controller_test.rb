require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reviews)
  end

    test "should get new" do
      get :new
      assert_response :success
    end

  test "should create review" do
    assert_difference('Review.count') do
      post :create, review: { member_id: @review.member_id }
    end

    assert_response :redirect
    assert_match /.*\/review\/fill_out_review.*/, @response.redirect_url
  end

  test "should update review" do
    patch :update, id: @review, review: { member_id: @review.member_id }
    assert_match /.*\/review\/fill_out_review.*/, @response.redirect_url
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete :destroy, id: @review
    end

    assert_redirected_to reviews_path
  end
end
