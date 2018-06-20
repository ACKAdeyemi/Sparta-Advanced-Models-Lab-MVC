3.times do
  Country.create(name: Faker::Address.country)
end

3.times do
  rand_country = rand(1..Country.all.length)
  Author.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, dob: Faker::Date.between_except(100.year.ago, 15.year.ago, Date.today), country_id: rand_country) #=> DATE FORMAT: "Wed, 24 Sep 2014"
end

3.times do
  rand_author = rand(1..Author.all.length)
  rand_year = rand(1400..2018)
  Book.create(title: Faker::Book.title, published_year: rand_year, genre: Faker::Book.genre, author_id: rand_author)
end

3.times do
  rand_book = rand(1..Book.all.length)
  Chapter.create(title: Faker::LordOfTheRings.location, book_id: rand_book)
end

3.times do
  rand_chapter = rand(1..Chapter.all.length)
  Paragraph.create(lorem: Faker::Lorem.paragraph, chapter_id: rand_chapter)
end
