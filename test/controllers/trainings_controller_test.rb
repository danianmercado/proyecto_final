require 'test_helper'

class TrainingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training = trainings(:one)
  end

  test "should get index" do
    get trainings_url
    assert_response :success
  end

  test "should get new" do
    get new_training_url
    assert_response :success
  end

  test "should create training" do
    assert_difference('Training.count') do
      post trainings_url, params: { training: { description: @training.description, finish_date: @training.finish_date, init_date: @training.init_date, title: @training.title } }
    end

    assert_redirected_to training_url(Training.last)
  end

  test "should show training" do
    get training_url(@training)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_url(@training)
    assert_response :success
  end

  test "should update training" do
<<<<<<< HEAD
    patch training_url(@training), params: { training: { description: @training.description, finish_date: @training.finish_date, init_date: @training.init_date, title: @training.title } }
=======
    patch training_url(@training), params: { training: { description: @training.description, finish_day: @training.finish_day, init_date: @training.init_date, title: @training.title } }
>>>>>>> 4a1e0d37a451c24b3a9fa61196d49334f9f8e03e
    assert_redirected_to training_url(@training)
  end

  test "should destroy training" do
    assert_difference('Training.count', -1) do
      delete training_url(@training)
    end

    assert_redirected_to trainings_url
  end
end
