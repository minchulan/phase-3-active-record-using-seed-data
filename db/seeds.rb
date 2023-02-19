# Add a console message so we can see output when the seed file runs

# To use the seeds.rb file to add data to the database, all we need to do is write code that uses Active Record methods to create new records. Add this to the db/seeds.rb file


# Add a console message so we can see output when the seed file runs
puts "Seeding games..."

# run a loop 50 times
50.times do
  # create a game with random data
  Game.create(
    title: Faker::Game.title,
    genre: Faker::Game.genre,
    platform: Faker::Game.platform,
    price: rand(0..60) # random number between 0 and 60
  )
end

puts "Done seeding!"