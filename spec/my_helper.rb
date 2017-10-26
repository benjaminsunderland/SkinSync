def createtattoo
  name = 'My First Tattoo'
  visit '/tattoos/new'
  fill_in 'tattoo[name]', with: name
  attach_file('tattoo[image_link]', Rails.root + 'spec/fixtures/love.jpg')
  click_button('Create Tattoo')
  visit('/tattoos')
end

def createrating
  star = 5
  visit '/ratings/new'
  fill_in 'rating[star]', with: star
  click_button('Create Rating')
end

def createparlour
  name = 'Tattoo Endz'
  location = 'West London'
  contact = '02071231231'
  description = 'A great place to get a tattoo'
  visit '/parlours/new'
  fill_in 'parlour[name]', with: name
  fill_in 'parlour[location]', with: location
  fill_in 'parlour[contact]', with: contact
  fill_in 'parlour[description]', with: description
  click_button('Create Parlour')
end

def createartist
  name = 'kittycat'
  visit '/artists/new'
  fill_in 'artist[name]', with: name
  select("5", from: "artist[rating_id]").select_option
  select("Tattoo Endz", from: "artist[parlour_id]").select_option
  click_button('Create Artist')
end
