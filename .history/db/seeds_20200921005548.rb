# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


request = Request.create([

    {
        description: "I need an assistance to get a new laptop for coding",
        lat: 9.076479,
        lng: 7.398574,
        request_type: "material-needs",
        fulfilled: true
    },

    {
        description: "My car recently broke down, kindly send help to me please",
        lat: 10.531850,
        lng: 7.429470,
        request_type: "one-time-task",
    },

    {
        description: "I need help with ",
        lat: 10.531850,
        lng: 7.429470,
        request_type: "one-time-task",
    },





])