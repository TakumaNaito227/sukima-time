class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :age, :integer
    add_column :users, :profile, :string
    add_column :users, :images, :string
  end
end
