class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.string  :title
      t.text    :content
      t.string  :return
      t.integer :author_id
      t.timestamps
    end
  end
end
