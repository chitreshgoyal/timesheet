require 'test_helper'

class FillTimesheetsControllerTest < ActionController::TestCase
  setup do
    @fill_timesheet = fill_timesheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fill_timesheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fill_timesheet" do
    assert_difference('FillTimesheet.count') do
      post :create, fill_timesheet: { date: @fill_timesheet.date, department: @fill_timesheet.department, description: @fill_timesheet.description, time_in: @fill_timesheet.time_in, time_out: @fill_timesheet.time_out }
    end

    assert_redirected_to fill_timesheet_path(assigns(:fill_timesheet))
  end

  test "should show fill_timesheet" do
    get :show, id: @fill_timesheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fill_timesheet
    assert_response :success
  end

  test "should update fill_timesheet" do
    put :update, id: @fill_timesheet, fill_timesheet: { date: @fill_timesheet.date, department: @fill_timesheet.department, description: @fill_timesheet.description, time_in: @fill_timesheet.time_in, time_out: @fill_timesheet.time_out }
    assert_redirected_to fill_timesheet_path(assigns(:fill_timesheet))
  end

  test "should destroy fill_timesheet" do
    assert_difference('FillTimesheet.count', -1) do
      delete :destroy, id: @fill_timesheet
    end

    assert_redirected_to fill_timesheets_path
  end
end
