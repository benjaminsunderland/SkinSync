require 'rails_helper'

# RSpec.describe "search/body_parts.html.erb", type: :view do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

feature 'search_body_parts page' do
  scenario 'should be able to view search body_parts page' do
    visit 'search/body_parts'
    expect(status_code).to eq(200)
    expect(page).to have_content("Where would you like your tattoo?")
  end

  scenario 'should navigate to filtered page after checking checkbox' do
    visit '/search/body_parts'
    check 'cb1'
    click_button "Next"
    expect(current_path).to eq '/search/styles'
  end

  scenario 'should save body_parts url parameters' do
    visit '/search/body_parts'
    check 'cb1'
    click_button "Next"
    expect(page).to have_current_path(/arm=on/)
  end

  scenario 'should save multiple body_parts parameters' do
    visit '/search/body_parts'
    check 'cb1'
    check 'cb2'
    check 'cb3'
    click_button "Next"
    expect(page).to have_current_path(/arm=on/)
    expect(page).to have_current_path(/back=on/)
    expect(page).to have_current_path(/leg=on/)
  end

end
