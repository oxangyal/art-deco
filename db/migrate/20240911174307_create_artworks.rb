class CreateArtworks < ActiveRecord::Migration[7.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :image
      t.integer :year
      t.string :category
      t.text :materials
      t.integer :width
      t.integer :height
      t.boolean :frame
      t.text :description
      t.decimal :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
