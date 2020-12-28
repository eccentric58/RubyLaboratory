require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    @user1 = users(:two)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Login"
  end

  test "creating a User" do

    visit users_url
    click_on "Sign Up"
    fill_in "Emeil", with: "test1132131@main.tu"
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create User"

    assert_text "Sessions#new"

  end

  test "updating a User" do

    visit users_url
    click_on "Sign Up"
    fill_in "Emeil", with: "test1132131@main.tu"
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create User"

    fill_in 'Emeil', with: "test1132131@main.tu"
    fill_in 'Password', with: 'secret'
    click_on 'Login'

    visit users_url
    click_on "Edit", match: :first
    fill_in "Emeil", with: "test113232131@main.tu"
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do

    visit users_url
    click_on "Sign Up"
    fill_in "Emeil", with: "test1132131@main.tu"
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create User"

    fill_in 'Emeil', with: "test1132131@main.tu"
    fill_in 'Password', with: 'secret'
    click_on 'Login'


    visit users_url

    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Login"
  end
end
