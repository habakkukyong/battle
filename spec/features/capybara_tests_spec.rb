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

feature 'Testing filling in names' do
  scenario 'Will set a name perameter to a name entered into a form' do
    visit('/')
    fill_in :player_1_name, with: 'Bob'
    fill_in :player_2_name, with: 'Rob'
    click_button('Submit')
    expect(page).to have_content 'Bob vs. Rob'
  end
end
