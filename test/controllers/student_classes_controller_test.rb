require 'test_helper'

class StudentClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_class = student_classes(:one)
  end

  test "should get index" do
    get student_classes_url, as: :json
    assert_response :success
  end

  test "should create student_class" do
    assert_difference('StudentClass.count') do
      post student_classes_url, params: { student_class: { capacity: @student_class.capacity, class_gender: @student_class.class_gender } }, as: :json
    end

    assert_response 201
  end

  test "should show student_class" do
    get student_class_url(@student_class), as: :json
    assert_response :success
  end

  test "should update student_class" do
    patch student_class_url(@student_class), params: { student_class: { capacity: @student_class.capacity, class_gender: @student_class.class_gender } }, as: :json
    assert_response 200
  end

  test "should destroy student_class" do
    assert_difference('StudentClass.count', -1) do
      delete student_class_url(@student_class), as: :json
    end

    assert_response 204
  end
end
