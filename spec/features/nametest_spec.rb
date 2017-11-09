require 'spec_helper'

feature 'name form' do
  scenario 'when players enter names in form, submit and shown on screen' do
    visit('/')
    fill_in('name1', with: 'suze')
    fill_in('name2', with: 'pete')
    click_button 'Submit'
    expect(page).to have_content 'Are you ready to battle? suze vs pete'
  end
end
