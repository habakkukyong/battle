require 'capybara/dsl'
require 'selenium-webdriver'

# def cptest_do
#   include Capybara::DSL
#   Capybara.default_driver = :selenium
#   visit 'http://localhost:2345'
# end

# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Play page' do
  scenario 'Displays player name params' do
    sign_in_and_play
    expect(page).to have_content 'p1 vs. p2'
  end

  scenario 'Displays player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'p2 hitpoints: 60'
  end
end

feature 'Attack page' do
  scenario 'Confirms that player 2 has been attacked' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'p2 was attacked'
  end

  scenario 'Attacked player hp decrease by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'p2 hp 50'
  end

  scenario 'Has Ok button which directs to play page' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    expect(page).to have_content 'p1 vs. p2'
  end
end
