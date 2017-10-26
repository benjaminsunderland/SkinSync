feature 'So I can know more about the tattoo' do
  scenario 'I would like to see the artist and parlour name associated' do
    createrating
    createtattoo
    createparlour
    createartist

    visit('/tattoos/1')
    expect(page).to have_css("img[src*='love.jpg']")
    expect(page).to have_content("My First Tattoo")
  end
end
