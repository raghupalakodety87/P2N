require "test_helper"

class RecruitmentPhasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recruitment_phase = recruitment_phases(:one)
  end

  test "should get index" do
    get recruitment_phases_url
    assert_response :success
  end

  test "should get new" do
    get new_recruitment_phase_url
    assert_response :success
  end

  test "should create recruitment_phase" do
    assert_difference("RecruitmentPhase.count") do
      post recruitment_phases_url, params: { recruitment_phase: { phase_name: @recruitment_phase.phase_name } }
    end

    assert_redirected_to recruitment_phase_url(RecruitmentPhase.last)
  end

  test "should show recruitment_phase" do
    get recruitment_phase_url(@recruitment_phase)
    assert_response :success
  end

  test "should get edit" do
    get edit_recruitment_phase_url(@recruitment_phase)
    assert_response :success
  end

  test "should update recruitment_phase" do
    patch recruitment_phase_url(@recruitment_phase), params: { recruitment_phase: { phase_name: @recruitment_phase.phase_name } }
    assert_redirected_to recruitment_phase_url(@recruitment_phase)
  end

  test "should destroy recruitment_phase" do
    assert_difference("RecruitmentPhase.count", -1) do
      delete recruitment_phase_url(@recruitment_phase)
    end

    assert_redirected_to recruitment_phases_url
  end
end
