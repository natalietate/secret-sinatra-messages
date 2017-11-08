require 'faker'

20.times do
  Message.create(
    title: Faker::Food.dish,
    body: Faker::Seinfeld.quote
  )
end
