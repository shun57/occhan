class ChangeDatatypeUserOfMessages < ActiveRecord::Migration[5.2]
  def change
    change_column :messages, :user_id, :integer, index: true, foreign_key: true
    change_column :messages, :conversation_id, :integer, index: true, foreign_key: true
  end
end
