require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Contact number", with: @employee.contact_number
    fill_in "Employee code", with: @employee.employee_code
    fill_in "First name", with: @employee.first_name
    fill_in "Last name", with: @employee.last_name
    fill_in "Middle name", with: @employee.middle_name
    fill_in "Profile image", with: @employee.profile_image
    fill_in "Work email", with: @employee.work_email
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Contact number", with: @employee.contact_number
    fill_in "Employee code", with: @employee.employee_code
    fill_in "First name", with: @employee.first_name
    fill_in "Last name", with: @employee.last_name
    fill_in "Middle name", with: @employee.middle_name
    fill_in "Profile image", with: @employee.profile_image
    fill_in "Work email", with: @employee.work_email
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
