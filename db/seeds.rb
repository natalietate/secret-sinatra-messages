require 'faker'

20.times do
  Message.create(
    title: Faker::Food.dish,
    body: Faker::HarryPotter.quote
  )
end
