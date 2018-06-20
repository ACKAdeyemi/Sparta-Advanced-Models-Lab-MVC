3.times do
  Country.create(name: Faker::Address.country)
end

3.times do
  Author.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, dob: Faker::Date.between_except(100.year.ago, 15.year.ago, Date.today)) #=> DATE FORMAT: "Wed, 24 Sep 2014"
end

3.times do
  rand_year = rand(1400..2018)
  Book.create(title: Faker::Book.title, published_year: rand_year, genre: Faker::Book.genre)
end

3.times do
  Chapter.create(title: Faker::LordOfTheRings.location)
end

3.times do
  Paragraph.create(lorem: Faker::Lorem.paragraph)
end
