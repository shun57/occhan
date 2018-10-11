class RenameAutherIdColumnToProblems < ActiveRecord::Migration[5.2]
  def change
    rename_column :problems, :author_id, :user_id
  end
end
