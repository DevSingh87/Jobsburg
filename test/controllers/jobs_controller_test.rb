require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { category_id: @job.category_id, industry_id: @job.industry_id, job_description: @job.job_description, job_title: @job.job_title, openings: @job.openings, salary_range_max: @job.salary_range_max, salary_range_min: @job.salary_range_min, work_exp_max: @job.work_exp_max, work_exp_min: @job.work_exp_min }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { category_id: @job.category_id, industry_id: @job.industry_id, job_description: @job.job_description, job_title: @job.job_title, openings: @job.openings, salary_range_max: @job.salary_range_max, salary_range_min: @job.salary_range_min, work_exp_max: @job.work_exp_max, work_exp_min: @job.work_exp_min }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
