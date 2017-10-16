class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.string :content
      t.references :question

      t.timestamps
    end
  end
end
