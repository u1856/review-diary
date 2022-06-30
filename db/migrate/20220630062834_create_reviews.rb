class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :title,                  null: true
      t.text :text,                   null: true
      t.float :rate,                  null: true
      t.integer :method_id
      t.integer :spoiler_id
      t.references :user,             null: false, foreign_key: true
      t.text :movie
      t.text :summary
      t.integer :category_id
      t.timestamps
    end
  end
end
