# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#..
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

style1 = Style.create(name: 'Gothic')
style2 = Style.create(name: 'Flowers')
style3 = Style.create(name: 'Animals')
style4 = Style.create(name: 'Butterflies')


body1 = BodyPart.create(name: 'Arm')
body2 = BodyPart.create(name: 'Back')
body3 = BodyPart.create(name: 'Leg')
body4 = BodyPart.create(name: 'Torso')


tattoo1 = Tattoo.create(name: 'Love', image_link: Rails.root.join("spec/fixtures/love.jpg").open)
tattoo2 = Tattoo.create(name: 'Cat', image_link: Rails.root.join("spec/fixtures/kittycat.jpg").open)
tattoo3 = Tattoo.create(name: 'Faith', image_link: Rails.root.join("spec/fixtures/faith.jpg").open)
tattoo4 = Tattoo.create(name: 'Time', image_link: Rails.root.join("spec/fixtures/time.jpg").open)
tattoo5 = Tattoo.create(name: 'Wolf', image_link: Rails.root.join("spec/fixtures/wolf.jpg").open)
tattoo6 = Tattoo.create(name: 'Andromeda', remote_image_link_url: 'http://apod.nasa.gov/apod/image/1407/m31_bers_960.jpg')
tattoo7 = Tattoo.create(name: 'Wisdom', remote_image_link_url: 'http://s3.amazonaws.com/ink_prod/photos/0311/7270/Wings_and_Wisdom_large.jpg')
tattoo8 = Tattoo.create(name: 'Dog', remote_image_link_url: 'https://static.boredpanda.com/blog/wp-content/uploads/2017/01/dog-tattoo-ideas-fb8__700.jpg')
tattoo9 = Tattoo.create(name: 'Knowledge', remote_image_link_url: 'https://i.pinimg.com/474x/81/87/5f/81875f7d2abac37ae5fa50e589684961--type-tattoo-tattoo-art.jpg')
tattoo10 = Tattoo.create(name: 'Happiness', remote_image_link_url: 'https://i.pinimg.com/736x/97/16/41/971641f8a92307b308884c16b051c25e--choose-happiness-meaningful-tattoos.jpg')


parlour1 = Parlour.create(name: 'Tattoo inc', location: 'North Street', contact: '02071231211', description: 'A reliable place to get a tattoo')
parlour2 = Parlour.create(name: 'Ink Forever', location: 'West End', contact: '02074121321', description: 'Good atmosphere and great service')
parlour3 = Parlour.create(name: 'No Regretz', location: 'Piccadily Circus', contact: '0207112221', description: 'A place to go when your drunk with your friends')
parlour4 = Parlour.create(name: 'Living on the edge', location: 'Edgware', contact: '0207122151', description: 'A North London parlour to suite your needs')
parlour5 = Parlour.create(name: 'Dreaming On', location: 'Dream Street', contact: '02078941234', description: 'Want to get your dream tattoo? This is the place')
parlour6 = Parlour.create(name: 'Love Alley', location: 'Love Street', contact: '02071231611', description: 'A reliable place to get a tattoo')
parlour7 = Parlour.create(name: 'End Of The Road', location: 'Leceister Square', contact: '02077721321', description: 'Good atmosphere and great service')
parlour8 = Parlour.create(name: 'Only The Brave', location: 'South Kensington', contact: '0207888221', description: 'A place to go when your drunk with your friends')
parlour9 = Parlour.create(name: 'London Tattoo', location: 'Tooting', contact: '0207165751', description: 'A North London parlour to suite your needs')
parlour10 = Parlour.create(name: 'Tattoo Hero', location: 'Chelsea', contact: '02078901234', description: 'Want to get your dream tattoo? This is the place')


rate1 = Rating.create(star: 1)
rate2 = Rating.create(star: 2)
rate3 = Rating.create(star: 3)
rate4 = Rating.create(star: 4)
rate5 = Rating.create(star: 5)


artist1 = Artist.create(name: 'Keith', parlour_id: parlour1.id, rating_id: rate1.id)
artist2 = Artist.create(name: 'Benjamin', parlour_id: parlour2.id, rating_id: rate2.id)
artist3 = Artist.create(name: 'Mengchen', parlour_id: parlour3.id, rating_id: rate3.id)
artist4 = Artist.create(name: 'James', parlour_id: parlour4.id, rating_id: rate4.id)
artist5 = Artist.create(name: 'Gary', parlour_id: parlour5.id, rating_id: rate5.id)
artist6 = Artist.create(name: 'Bob', parlour_id: parlour6.id, rating_id: rate1.id)
artist7 = Artist.create(name: 'Jerry', parlour_id: parlour7.id, rating_id: rate2.id)
artist8 = Artist.create(name: 'Susan', parlour_id: parlour8.id, rating_id: rate3.id)
artist9 = Artist.create(name: 'Beyonce', parlour_id: parlour9.id, rating_id: rate4.id)
artist10 = Artist.create(name: 'Shirley', parlour_id: parlour10.id, rating_id: rate5.id)

# tattoo1 = Tattoo.first_or_create(name: 'Mars', remote_image_link_url: 'http://apod.nasa.gov/apod/image/1407/m31_bers_960.jpg')
# tattoo2 = Tattoo.where(:name => 'Andy').first_or_create(name: 'Pluto', remote_image_link_url: 'http://cdn3-www.dogtime.com/assets/uploads/gallery/30-impossibly-cute-puppies/impossibly-cute-puppy-21.jpg')
# body1 =  BodyPart.first_or_create(name: 'Arm')
# body2 =  BodyPart.where(:name => 'Andy').first_or_create(name: 'FullBody')

# artist1.tattoos <<

# body_part_tattoos
body1.tattoos << tattoo1
body2.tattoos << tattoo2
body3.tattoos << tattoo3
body4.tattoos << tattoo4
body1.tattoos << tattoo5
body2.tattoos << tattoo6
body3.tattoos << tattoo7
body4.tattoos << tattoo8
body1.tattoos << tattoo9
body2.tattoos << tattoo10


#style_tattoos
style1.tattoos << tattoo1
style2.tattoos << tattoo2
style3.tattoos << tattoo3
style4.tattoos << tattoo4
style1.tattoos << tattoo5
style2.tattoos << tattoo6
style3.tattoos << tattoo7
style4.tattoos << tattoo8
style1.tattoos << tattoo9
style2.tattoos << tattoo10

#artists_tattoos
artist10.tattoos << tattoo1
artist9.tattoos << tattoo2
artist8.tattoos << tattoo3
artist7.tattoos << tattoo4
artist6.tattoos << tattoo5
artist5.tattoos << tattoo6
artist4.tattoos << tattoo7
artist3.tattoos << tattoo8
artist2.tattoos << tattoo9
artist1.tattoos << tattoo10





#
# create_table "styles_tattoos", id: false, force: :cascade do |t|
#   t.integer "tattoo_id", null: false
#   t.integer "style_id", null: false
# end
