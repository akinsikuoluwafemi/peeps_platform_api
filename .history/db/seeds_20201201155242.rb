# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# j = User.find(6)

# j.avatar.attach(
#     io: File.open('./public/avatar/image1.png'),
#     filename: 'image1.png',
#     content_type: 'application/png'
# )

Request.create([{
    description: "I need a fan",
    lat: 0,
    lng: 0,
    request_type: "material-need",
    user_id: 
}])