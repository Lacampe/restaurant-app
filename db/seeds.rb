require 'faker'

Restaurant.destroy_all

20.times do
  Restaurant.create({
    name: Faker::Beer.name,
    address: Faker::Address.city,
    description: Faker::Lorem.sentence,
    stars: (1..5).to_a.sample,
    chef: Faker::Friends.character
  })
end
