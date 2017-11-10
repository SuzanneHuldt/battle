def sign_in_and_play
  visit('/')
  fill_in('name1', with: 'suze')
  fill_in('name2', with: 'pete')
  click_button 'Submit'
end
