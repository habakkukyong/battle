require 'capybara/dsl'
require 'selenium-webdriver'

# def cptest_do
#   include Capybara::DSL
#   Capybara.default_driver = :selenium
#   visit 'http://localhost:2345'
# end

# feature 'Testing infrastructure' do
#   scenario 'Can runa app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Testing play page' do
  scenario 'Will set a name parameter to a name entered into a form' do
    sign_in_and_play
    expect(page).to have_content 'p1 vs. p2'
  end

  scenario 'when player names have been provided hitpoints shown' do
    sign_in_and_play
    expect(page).to have_content 'p2 hitpoints: 100'
  end
end
