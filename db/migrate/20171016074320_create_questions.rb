class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :category
      t.integer :timelimit

      t.timestamps
    end
  end
end
