class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :price
      t.string :image
      t.boolean :status

      t.timestamps
    end
  end
end
