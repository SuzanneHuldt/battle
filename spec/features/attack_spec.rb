require 'spec_helper'

feature 'attack' do
  scenario 'when player 1 attacks player 2 get confirmation' do
    sign_in_and_play
    click_button 'ATTACK'
    click_link 'OK'
    expect(page).to have_content 'Player 2 hit-points: 90HP'
  end
end
