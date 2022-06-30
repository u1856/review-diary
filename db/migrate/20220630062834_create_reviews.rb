class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :title,                  null: false
      t.text :text,                   null: false
      t.float :rate,                  null: false
      t.integer :method_id
      t.integer :spoiler_id
      t.text :movie
      t.text :summary
      t.integer :category_id
      t.references :user,             null: false, foreign_key: true
      t.timestamps
    end
  end
end
