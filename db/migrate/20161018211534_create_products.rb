class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :producto
      t.string :codigo_producto
      t.text :descripcion
      t.integer :votos

      t.timestamps
    end
  end
end
