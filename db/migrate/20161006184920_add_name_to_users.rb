class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nombre, :string
    add_column :users, :telefono, :string
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :date_of_birth, :datetime
  end
end
