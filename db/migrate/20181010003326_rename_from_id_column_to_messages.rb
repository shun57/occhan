class RenameFromIdColumnToMessages < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :from_id, :user_id
    rename_column :messages, :to_id, :conversation_id
  end
end
