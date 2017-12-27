class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.boolean :available
      t.string :image
      t.references :category

      t.timestamps
    end
  end
end
