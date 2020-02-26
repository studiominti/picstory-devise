# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Story.destroy_all
 
6.times do |i|
    user = User.create(name: "User #{i}", email: "mail#{i}@gmail.com", password: "12345678")
    Story.create(
        image: "https://picsum.photos/id/#{i+25}/500/500", user: user
    )
end

User.create(name:"El Admin", email: "admin@gmail.com", password: "12345678", admin: true)