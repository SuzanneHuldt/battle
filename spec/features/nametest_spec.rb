require 'spec_helper'

feature 'name form' do
  scenario 'when players enter names in form, submit and shown on screen' do
    sign_in_and_play
    expect(page).to have_content 'Are you ready to battle? suze vs pete'
  end
end
