class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :height
      t.integer :weight
      t.string :sex
      t.integer :activity_level

      t.timestamps null: false
    end
  end
end
