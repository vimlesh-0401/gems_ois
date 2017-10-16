class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :password
      t.integer :role, default: 2 # 1: admin , 2: other users

      t.timestamps
    end
  end
end
