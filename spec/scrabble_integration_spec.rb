require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the scrabble path', :type => :feature do
  it('process the user entry and returns its scrabble score') do
    visit('/')
    fill_in('scrabble', :with => 'help')
    click_button('SCORE')
    expect(page).to have_content('9')
  end
end
