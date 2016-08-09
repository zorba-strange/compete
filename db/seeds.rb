# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
User.destroy_all
Competition.destroy_all

User.create!({username: "Zorba", password: "zorba", profile_url: "http://www.nesssoftware.com/www/img/stills/ZorbaTheGreek.jpg", bio: "If a woman sleeps alone it puts a shame on all men. God has a very big heart, but there is one sin He will not forgive. If a woman calls a man to her bed and he will not go."})

Competition.create!({title: "Hacker Reading", start_date: "August 8 2016", end_date: "September 1 2016", info: "Everyday put in work into reading up on computer security, web security, their weaknesses, and how to expolit them."})

