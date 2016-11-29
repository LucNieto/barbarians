class CreateLabelProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :label_products do |t|
      t.integer  :product_id
      t.integer  :label_id
      t.timestamps
    end
  end
end
