class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :movie_id
      t.text :title
      t.text :text
      t.integer :rate
      t.timestamps
    end
  end
end
