require 'spec_helper'

feature 'index page' do
  scenario 'I should see the index page when logged in' do
    auth_admin
    expect(current_path).to eq root_path
  end

  scenario 'I should see the index page when not logged in' do
    visit root_path
    expect(current_path).to eq root_path
  end
end