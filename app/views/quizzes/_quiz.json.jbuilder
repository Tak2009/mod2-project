json.extract! quiz, :id, :image_id, :question, :difficulty, :genre_id, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
