require "application_system_test_case"

class CohortsTest < ApplicationSystemTestCase
  setup do
    @cohort = cohorts(:one)
  end

  test "visiting the index" do
    visit cohorts_url
    assert_selector "h1", text: "Cohorts"
  end

  test "should create cohort" do
    visit cohorts_url
    click_on "New cohort"

    fill_in "D corhort", with: @cohort.d_corhort_id
    fill_in "D name", with: @cohort.d_name
    click_on "Create Cohort"

    assert_text "Cohort was successfully created"
    click_on "Back"
  end

  test "should update Cohort" do
    visit cohort_url(@cohort)
    click_on "Edit this cohort", match: :first

    fill_in "D corhort", with: @cohort.d_corhort_id
    fill_in "D name", with: @cohort.d_name
    click_on "Update Cohort"

    assert_text "Cohort was successfully updated"
    click_on "Back"
  end

  test "should destroy Cohort" do
    visit cohort_url(@cohort)
    click_on "Destroy this cohort", match: :first

    assert_text "Cohort was successfully destroyed"
  end
end
