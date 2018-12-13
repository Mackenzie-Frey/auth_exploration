require 'rails_helper'

describe 'user visitng the signup page' do
  it 'can register by inputting into a form' do

    visit users_path

    click_on 'Signup'

    expect(current_path).to eq(new_user_path)

    fill_in :name, with: 'Sally Ride'
    fill_in :email, with: '1stwomaninspsace@aol.com'
    fill_in :password, with: '123456'

    click_on 'Create Account'

    expect(page).to have_content("Welcome, #{username}!")
  end
end
