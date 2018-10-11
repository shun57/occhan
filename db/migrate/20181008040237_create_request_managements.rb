class CreateRequestManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :request_managements do |t|
      t.integer :user_id
      t.integer :problem_id

      t.timestamps
    end
  end
end
