require 'spec_helper'

feature 'folders' do

  scenario 'creates a folder from an user' do

    visit new_user_folder(User.first)

  end

end