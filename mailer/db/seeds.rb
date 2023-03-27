# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.destroy_all


Product.create!([{
    name:"Handsfree",
    price:999,
    description:"Enjoy feet tapping music with this pair of Samsung wired earphones"
},
{
    name:"Bluetooth",
    price:1500,
    description:"Witness sound experience with an exclusive collection of Bluetooth"
},
{
    name:"Boat HeadPhone",
    price:5000,
    description:"Buy best of padded speakers which you wear over your ears in order to listen to a radio or recorded music"
},
{
    name:"Earbuds",
    price:1800,
    description:"Premium earbuds at best price"
}])


