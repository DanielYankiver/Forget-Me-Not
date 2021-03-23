require 'faker'
Event.delete_all
User.delete_all
Contact.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# 10.times do 
#     Gift.create(name: Faker::Name.name, description: Faker::Marketing.buzzwords, link: Faker::Internet.domain_name, image: Faker::SlackEmoji.objects_and_symbols, event_id: Event.ids.sample) 
# end 


# 10.times do 
#     Message.create(event_id: rand(1..10), title: Faker::Quote.yoda, body: Faker::Quote.famous_last_words, image: Faker::SlackEmoji.objects_and_symbols)
# end 

User.create(name: "Mark", username: "markymark",password: "abc123",password_confirmation: "abc123")
User.create(name: "Daniel", username: "dyank", password: "abc123",password_confirmation: "abc123")
User.create(name: "Eric", username: "ericthelord", password: "abc123",password_confirmation: "abc123")




    Contact.create(name: "Niko", birthday: '2014-09-23', contact_info: "000-000-0000", image: "https://i.ibb.co/nBbX7qD/Project-Niko.jpg", user_id: 1)
    Contact.create(name: "Jen", birthday: '2014-09-23', contact_info: "000-000-0000", image: "https://i.ibb.co/nzrSjmf/Project-Jenny.jpg", user_id: 1)
    Contact.create(name: "Haley", birthday: '2014-09-23', contact_info: "000-000-0000", image: "https://i.ibb.co/tYqy0yM/Project-Haley.jpg", user_id: 1)
    Contact.create(name: "Dan", birthday: '2014-09-23', contact_info: "000-000-0000", image: "https://i.ibb.co/bXpY5K7/Project-Dan-With-Hair.jpg", user_id: 1)


   
        Event.create( date: DateTime.now,
                      time: Time.now,
                      event_name: "Birthday",
                      note: "Don't forget guest list!",
                      category: "🎁",
                      user_id: 1,
                      contact_id: 1,
                      message: "What time should I be there?"

                      )
        Event.create( date: DateTime.now,
                      time: Time.now,
                      event_name: "Halloween Party",
                      note: "Don't forget guest list!",
                      category: "🎃",
                      user_id: 1,
                      contact_id: 2,
                      message: "What time should I be there?"

                      )
        Event.create( date: DateTime.now,
                      time: Time.now,
                      event_name: "Bat-Mitzvah",
                      note: "Don't forget guest list!",
                      category: "🕍",
                      user_id: 1,
                      contact_id: 3,
                      message: "What time should I be there?"

                      )
        Event.create( date: DateTime.now,
                      time: Time.now,
                      event_name: "Anniversary",
                      note: "Don't forget guest list!",
                      category: "🍾",
                      user_id: 1,
                      contact_id: 4,
                      message: "What time should I be there?"

                      )

puts "Seed! Seed! Seed! Seed! Seed!"

