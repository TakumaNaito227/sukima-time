class RemoveNicknameToMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :nickname, :string
  end
end
