require 'spec_helper'

describe 'Restaurants' do
  describe 'GET /' do
    it 'shows all restaurants' do
      restaurant = Restaurant.create(name: 'Hundred Acres', address: '10 Spring Street, Manhattan NY')
      visit root_path
      page.should have_text('Hundred Acres')
      page.should have_text('10 Spring Street, Manhattan NY')
    end
  end
    it 'shows edit delete and add restaurant links for an admin user', :js => true do
      restaurant = Restaurant.create(name: 'Hundred Acres', address: '10 Spring Street, Manhattan NY')
      user = User.create(name: 'Admin', email: 'admin@gmail.com', password: 'a', password_confirmation: 'a', is_admin: true)
      admin_login
      visit root_path
      page.should_not have_link('Login')
      page.should have_link('Edit')
      page.should have_link('Delete')
    end
  it 'lets user delete instance of Restaurant if user is admin', :js => true do
    restaurant = Restaurant.create(name: 'Hundred Acres', address: '10 Spring Street, Manhattan NY')
    user = User.create(name: 'Admin', email: 'admin@gmail.com', password: 'a', password_confirmation: 'a', is_admin: true)
    admin_login
    visit root_path
    page.should_not have_link('Login')
    page.should have_link('Edit')
    click_link('Delete')
    page.driver.browser.switch_to.alert.accept
    page.should_not have_text('Hundred Acres')
  end
  it 'does not let user delete instance of Restaurant if user is not an admin', :js => true do
    restaurant = Restaurant.create(name: 'Hundred Acres', address: '10 Spring Street, Manhattan NY')
    user = User.create(name: 'Bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
    user_login
    visit root_path
    page.should_not have_link('Login')
    page.should_not have_link('Add Restaurant')
    page.should_not have_link('Edit')
    page.should_not have_link('Edit')
    page.should have_text('Hundred Acres')
  end
end

def admin_login
  visit root_path
  click_link('Login')
  fill_in('Email', :with => 'admin@gmail.com')
  fill_in('Password', :with => 'a')
  click_button('Login')
end

def user_login
  visit root_path
  click_link('Login')
  fill_in('Email', :with => 'bob@gmail.com')
  fill_in('Password', :with => 'a')
  click_button('Login')
end