require 'capybara/dsl'
require 'selenium-webdriver'


def cptest_do
  include Capybara::DSL
  Capybara.default_driver = :selenium
  visit 'http://localhost:2345'
end
