require 'rails_helper'

describe 'As a visitor', type: :feature do
  it 'I can search for members by house' do
    visit '/'

    click_button 'Search For Members'

    expect(current_path).to eq('/search')

    within '#members' do
      expect(page).to have_css(count: 21)
    end

    within '#member-0' do
      expect(page).to have_content('Name:')
      expect(page).to have_content('House: Gryffindor')
    end

    within '#member-20' do
      expect(page).to have_content('Name:')
      expect(page).to have_content('House: Gryffindor')
    end
  end
end
