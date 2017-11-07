# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
  {username: "mgaspari", password: "123", password_confirmation: "123", first_name: "Marco", last_name: "Gaspari", phone_number: 9142225007},
  {username: "fischool", password: "123", password_confirmation: "123", first_name: "Flat", last_name: "Iron", phone_number: 9142225007}

  ])

Admin.create([
  {name: "Chipotle", street: "27 Broadway", zip_code: 10004, state: "NY", city: "New York", phone_number: 9142225007, username: "chipotle", password:"123", password_confirmation: "123"},
  {name: "Carvel", street: "9 Broadway", zip_code: 10004, state: "NY", city: "New York", phone_number: 9142225007, username: "carvel", password:"123", password_confirmation: "123"}
  ])

Deal.create([
  {admin_id: 1, deal_day: Time.now.to_date, img_link: "https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/0021/8854/brand.gif?itok=QyuTSX00",
  description: "Freedos", title: "Free", address: "600 Post Rd, Scarsdale, NY 10583, USA", lat: 40.96, lng: -73.80 },
  {admin_id: 2, deal_day: Time.now.to_date, img_link: "https://seeklogo.com/images/C/Carvel-logo-2C77613670-seeklogo.com.gif",
  description: "Icefreem", title: "Also free", address: "10 Wildwood Dr, Caldwell, NJ 07006, USA", lat: 40.86, lng: -74.24 }
  ])

UserDeal.create([
  {user_id: 1, deal_id: 1},
  {user_id: 2, deal_id: 2}
  ])
