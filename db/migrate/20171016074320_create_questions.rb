class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :category # 1: single choice, 2: multi choice, 3: user input
      t.integer :timelimit
      t.references :test
      t.timestamps
    end
  end
end
