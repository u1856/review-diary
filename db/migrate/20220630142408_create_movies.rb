class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.text :title,                     null: true
      t.text :summary,                   null: true
      t.integer :category_id,            null: false
      t.references :user,                null: false, foreign_key: true
      t.timestamps
    end
  end
end
