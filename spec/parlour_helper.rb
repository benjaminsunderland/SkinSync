def create_parlour(name='', location='', contact='', description='' )
  visit '/parlours/new'
  fill_in 'parlour[name]', with: name
  fill_in 'parlour[location]', with: location
  fill_in 'parlour[contact]', with: contact
  fill_in 'parlour[description]', with: description
  click_button('Create Parlour')
end

def edit_parlour(name='', location='', contact='', description='' )
  fill_in 'parlour[name]', with: name
  fill_in 'parlour[location]', with: location
  fill_in 'parlour[contact]', with: contact
  fill_in 'parlour[description]', with: description
  click_button('Update Parlour')
end
