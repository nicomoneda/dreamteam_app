class CreateDreams < ActiveRecord::Migration[6.0]
  def change
    create_table :dreams do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :poster_url
      t.integer :transpiration_level
      t.string :category
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
