require 'spec_helper'

describe 'Session' do
  describe 'GET /' do
    it 'displays login link' do
      visit root_path
      page.should have_link('Login')
    end
  end
  describe 'GET /login' do
    it 'displays the login form', :js => true do
      visit root_path
      click_link('Login')
      page.should have_button('Cancel')
      page.should have_button('Login')
    end
  end
  describe 'JS cancel_login_form()' do
    it 'removes the login form', :js => true do
      visit root_path
      click_link('Login')
      click_button('Cancel')
      page.should_not have_link('Cancel')
    end
  end
  describe 'POST /login' do
    let(:user) { User.create(email: 'bob@gmail.com', name: 'Bob', password: 'a', password_confirmation: 'a') }
    it 'logs the user into the system if credentials are correct', :js => true do
      visit root_path
      click_link('Login')
      fill_in('Email', :with => user.email)
      fill_in('Password', :with => 'a')
      click_button('Login')
      visit root_path
      page.should_not have_link('Login')
      page.should have_link('Bob | Logout')
      click_link('Bob | Logout')
    end
    it 'does not log the user into the system if credentials are incorrect', :js => true do
      visit root_path
      click_link('Login')
      fill_in('email', :with => user.email)
      fill_in('password', :with => 'b')
      click_button('Login')
      visit root_path
      page.should_not have_link('Logout')
    end
  end
end