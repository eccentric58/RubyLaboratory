require 'application_system_test_case'

class SessionsTest < ApplicationSystemTestCase
	test 'truth' do
		:login
		assert true
	end

	test 'should not login user with invalid credentials' do
		visit login_url

		fill_in 'Emeil', with: "ugiy"
		fill_in 'Password', with: "gygyuu"
		click_on 'Login'
		assert_text 'Emeil or password is invalid'
	end


  test 'array and count' do
    login = "test11@main.ru"
    password = "1234"

    visit signup_url


    fill_in 'Emeil', with: login
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    click_on 'Create User'

    assert_text 'Sessions#new'


    fill_in 'Emeil', with: login
    fill_in 'Password', with: password
    click_on 'Login'

    assert_text 'array'

    fill_in 'page_count', with: "5"
    fill_in 'page_array', with: "1 2 3 4 5"
    click_on 'Save Page'

    assert_text 'Max'



    # click_on 'Logout'

    # assert_text 'Login'
  end

  test 'register login and logout' do
  	login = "test11@main.ru"
    password = "1234"

    visit signup_url


    fill_in 'Emeil', with: login
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    click_on 'Create User'

    assert_text 'Sessions#new'


    fill_in 'Emeil', with: login
    fill_in 'Password', with: password
    click_on 'Login'

    assert_text 'array'

    click_on 'Log Out'
    assert_text 'Login'
  end




end
