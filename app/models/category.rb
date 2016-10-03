class Category < ApplicationRecord
  validates :nombre_categoria, :presence => { :message => " en blanco" }, :uniqueness => { :message => " repetida" }
end
