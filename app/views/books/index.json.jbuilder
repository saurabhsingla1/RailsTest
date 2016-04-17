json.array!(@books) do |book|
  json.extract! book, :id, :title, :name
  json.url book_url(book, format: :json)
end
