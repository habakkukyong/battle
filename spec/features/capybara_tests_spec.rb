require 'capybara/dsl'
require 'selenium-webdriver'

# def cptest_do
#   include Capybara::DSL
#   Capybara.default_driver = :selenium
#   visit 'http://localhost:2345'
# end

feature 'Testing infrastructure' do
  scenario 'Can runa app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
