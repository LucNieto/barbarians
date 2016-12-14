class CreateLabelings < ActiveRecord::Migration[5.0]
  def change
    create_table :labelings do |t|
      t.integer :product_id
      t.integer :label_id
      t.integer :position

      t.timestamps
    end
    add_index :labelings, [:product_id, :label_id]
  end
end
