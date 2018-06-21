json.extract! book, :id, :title, :genre, :published_year, :author_id, :created_at, :updated_at
json.url book_url(book, format: :json)
