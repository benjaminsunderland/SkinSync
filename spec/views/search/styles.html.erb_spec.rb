require 'rails_helper'

# RSpec.describe "search/styles.html.erb", type: :view do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

feature 'search_styles page' do
  scenario 'should be able to view search tattoo styles page' do
    visit 'search/styles'
    expect(status_code).to eq(200)
    expect(page).to have_content("What style?")
  end
end
