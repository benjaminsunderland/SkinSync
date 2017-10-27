require 'rails_helper'
feature 'Add Parlour' do
  scenario 'No Parlours' do
    name = 'Tattoo inc'
    location = 'North Street'
    contact = '02071231211'
    description = 'A reliable place to get a tattoo'
    create_parlour(name, location, contact, description)
    expect(page).to have_content(name)
    expect(page).to have_content(location)
    expect(page).to have_content(contact)
    expect(page).to have_content(description)
  end

  scenario 'Another Parlours Exist' do
    name = 'Tattoo inc'
    location = 'North Street'
    contact = '02071231211'
    description = 'Good atmosphere and great service'
    create_parlour(name, location, contact, description)
    click_on 'Back'
    name = 'Ink Forever'
    location = 'West End'
    contact = '02074121321'
    description = 'A reliable place to get a tattoo'
    create_parlour(name, location, contact, description)
    click_on 'Back'
    expect(page).to have_content(name)
    expect(page).to have_content(location)
    expect(page).to have_content(contact)
    expect(page).to have_content(description)
  end

  scenario 'Prevnt Invalid input' do
    create_parlour('Tom')
    expect(page).to have_content('prohibited this parlour from being saved')
  end

  scenario 'Prevent adding an already existing name' do
    name = 'Tattoo inc'
    location = 'North Street'
    contact = '02071231211'
    description = 'Good atmosphere and great service'
    create_parlour(name, location, contact, description)
    click_on 'Back'
    create_parlour(name, location, contact, description)
    expect(page).to have_content('Name has already been taken')
  end
end

feature 'Edit Parlour' do
  scenario 'Allow details to be updated' do
    name = 'Tattoo inc'
    location = 'North Street'
    contact = '02071231211'
    description = 'Good atmosphere and great service'
    create_parlour(name, location, contact, description)
    click_on 'Edit'
    name = 'Tattoo inc'
    location = 'North Street'
    contact = '02071231211'
    description = 'Good atmosphere and great service'
    edit_parlour(name, location, contact, description)
    expect(page).to have_content(name)
    expect(page).to have_content(location)
    expect(page).to have_content(contact)
    expect(page).to have_content(description)
  end

  scenario 'Prevnt Invalid input' do
    name = 'Tattoo inc'
    location = 'North Street'
    contact = '02071231211'
    description = 'Good atmosphere and great service'
    create_parlour(name, location, contact, description)
    click_on 'Edit'
    edit_parlour
    expect(page).to have_content('prohibited this parlour from being saved')
  end

  scenario 'Prevent changing name to an existing name' do
    name = 'Tattoo inc'
    location = 'North Street'
    contact = '02071231211'
    description = 'Good atmosphere and great service'
    create_parlour(name, location, contact, description)
    click_on 'Back'
    name = 'Ink Forever'
    location = 'West End'
    contact = '02074121321'
    description = 'A reliable place to get a tattoo'
    create_parlour(name, location, contact, description)
    click_on 'Back'
    within(:css, "//tr[id='1']") do
      click_on 'Edit'
    end
    name = 'Ink Forever'
    edit_parlour(name, location, contact, description)
    expect(page).to have_content('Name has already been taken')
  end
end

feature 'Delete Parlour' do
  scenario 'Remove Parlour' do
    name = 'Tattoo inc'
    location = 'North Street'
    contact = '02071231211'
    description = 'Good atmosphere and great service'
    create_parlour(name, location, contact, description)
    click_on 'Back'
    within(:css, "//tr[id='1']") do
      expect { click_on 'Destroy' }.to change(Parlour, :count).by(-1)
    end
    expect(page).not_to have_content('Tattoo inc')
  end
end
