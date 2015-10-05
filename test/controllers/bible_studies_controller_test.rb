require 'test_helper'

class BibleStudiesControllerTest < ActionController::TestCase
  setup do
    @bible_study = bible_studies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bible_studies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bible_study" do
    assert_difference('BibleStudy.count') do
      post :create, bible_study: { date: @bible_study.date, lesson: @bible_study.lesson, takeaways: @bible_study.takeaways }
    end

    assert_redirected_to bible_study_path(assigns(:bible_study))
  end

  test "should show bible_study" do
    get :show, id: @bible_study
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bible_study
    assert_response :success
  end

  test "should update bible_study" do
    patch :update, id: @bible_study, bible_study: { date: @bible_study.date, lesson: @bible_study.lesson, takeaways: @bible_study.takeaways }
    assert_redirected_to bible_study_path(assigns(:bible_study))
  end

  test "should destroy bible_study" do
    assert_difference('BibleStudy.count', -1) do
      delete :destroy, id: @bible_study
    end

    assert_redirected_to bible_studies_path
  end
end
