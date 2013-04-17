require 'spec_helper'

feature 'home page' do
  scenario 'welcomes the user' do
    visit '/'
    page.should have_content('Welcome')
  end
end