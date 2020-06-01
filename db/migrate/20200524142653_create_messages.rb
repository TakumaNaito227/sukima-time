class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :name , null: false
      t.string :title, null: false
      t.string :city, null:false
      t.date :date, null: false
      t.time :time, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
