class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.date :day, null: false
      t.time :start, null: false
      t.time :end, null: false
      t.string :text, null: false
      t.integer :money, null: false
      t.integer :user_id, null: false, foreign_key: true
      t.integer :city_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
