require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(show_exceptions: false)

describe 'the word_count path', { type: :feature } do
  it 'takes user input of string and single word and returns how often single word is contained in string' do
    visit '/'
    fill_in('sentence', :with => 'cat cat cat')
    +    fill_in('sentence', :with => 'Only two cats are better than one')
    fill_in('word', :with => 'cat')
    click_button('result')
    -    expect(page).to have_content("test")
    +    expect(page).to have_content("2")
  end

end
