require "application_system_test_case"

class RecruitmentPhasesTest < ApplicationSystemTestCase
  setup do
    @recruitment_phase = recruitment_phases(:one)
  end

  test "visiting the index" do
    visit recruitment_phases_url
    assert_selector "h1", text: "Recruitment phases"
  end

  test "should create recruitment phase" do
    visit recruitment_phases_url
    click_on "New recruitment phase"

    fill_in "Phase name", with: @recruitment_phase.phase_name
    click_on "Create Recruitment phase"

    assert_text "Recruitment phase was successfully created"
    click_on "Back"
  end

  test "should update Recruitment phase" do
    visit recruitment_phase_url(@recruitment_phase)
    click_on "Edit this recruitment phase", match: :first

    fill_in "Phase name", with: @recruitment_phase.phase_name
    click_on "Update Recruitment phase"

    assert_text "Recruitment phase was successfully updated"
    click_on "Back"
  end

  test "should destroy Recruitment phase" do
    visit recruitment_phase_url(@recruitment_phase)
    click_on "Destroy this recruitment phase", match: :first

    assert_text "Recruitment phase was successfully destroyed"
  end
end
