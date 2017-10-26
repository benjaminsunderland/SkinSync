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
end
