class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true, null: false
      t.references :movie, null: false, foreign_key: true, null: false

      t.timestamps
    end
  end
end
