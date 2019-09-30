json.extract! quiz_user, :id, :user_id, :quiz_id, :answers, :created_at, :updated_at
json.url quiz_user_url(quiz_user, format: :json)
