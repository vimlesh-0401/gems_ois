class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.string :content
      t.question :references

      t.timestamps
    end
  end
end
