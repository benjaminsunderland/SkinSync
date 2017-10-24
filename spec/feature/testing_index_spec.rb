require 'rails_helper'

feature 'when visiting the index page' do
  scenario 'I would like to see an image with three links' do
    createtattoo
    within("//tr[id='1']") do
      expect(page).to have_css("img[src*='love.jpg']")
      expect(page).to have_content('Show')
      expect(page).to have_content('Edit')
      expect(page).to have_content('Destroy')
    end
  end
  pending scenario 'As guest I cannot edit or delete tatto' do
  end
end
