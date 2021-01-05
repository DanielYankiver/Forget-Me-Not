require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do 
    Event.create( date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
                  time: Faker::Time.between(from: Time.now - 12, to: Time.now, format: :default),
                  event_name: Faker::SlackEmoji.celebration,
                  note: Faker::Quotes::Shakespeare.hamlet_quote,
                  category: ["Birthday", "Anniversary", "Funeral", "Party", "Bar-Mitzvah", "Bat-Mitzavah", "Coffee Date", "Call", "Facetime Date"].sample,
                  user_id: rand(1..10),
                  contact_id: rand(1..10)
                  )
end 

10.times do 
    Gift.create(name: Faker::Name.name, description: Faker::Marketing.buzzwords, link: Faker::Internet.domain_name, image: Faker::SlackEmoji.objects_and_symbols) 
end 


10.times do 
    Message.create(event_id: rand(1..10), title: Faker::Quote.yoda, body: Faker::Quote.famous_last_words, image: Faker::SlackEmoji.objects_and_symbols)
end 

10.times do 
    User.create(name: Faker::Name.name, username: Faker::Internet.username(specifier: 8), password_digest: Faker::Internet.password)
end 

10.times do 
    Contact.create(name: Faker::Name.name, birthday: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'), contact_info: Faker::PhoneNumber.cell_phone, image: Faker::SlackEmoji.objects_and_symbols, user_id: User.ids.sample)
end 

puts "Seeded!!!"

