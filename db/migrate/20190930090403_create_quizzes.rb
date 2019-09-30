class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.text :question
      t.integer :difficulty
      t.integer :genre_id

      t.timestamps
    end
  end
end
