class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.references :user, foreign_key: true
      t.references :todo, foreign_key: true
      t.boolean :completed, default: true

      t.timestamps
    end
  end
end
