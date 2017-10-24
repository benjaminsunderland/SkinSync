def createtattoo
  name = 'My First Tattoo'
  visit '/tattoos/new'
  fill_in 'tattoo[name]', with: name
  attach_file('tattoo[image_link]', Rails.root + 'spec/fixtures/love.jpg')
  click_button('Create Tattoo')
  visit('/tattoos')
end
