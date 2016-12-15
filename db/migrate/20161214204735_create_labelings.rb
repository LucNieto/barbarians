class CreateLabelings < ActiveRecord::Migration[5.0]
  def change
    create_table :labelings do |t|
     t.references :product, index: true, foreign_key: true
     t.references :label, index: true,  foreign_key: true

     # t.integer :product_id
     # t.integer :label_id
     #t.integer :position

    t.timestamps null: false
    end
   # add_index :labelings, [:product_id, :label_id]
  end
end
