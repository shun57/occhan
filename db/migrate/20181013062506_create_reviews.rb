class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :problem_id
      t.text :review_content
      t.timestamps
    end
  end
end
