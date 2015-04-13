class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :question
      t.string :answer
      t.string :type

      t.timestamps
    end
  end
end
