class Category < ApplicationRecord
  validates :nombre_categoria, :presence => { :message => " en blanco" }, :uniqueness => { :message => " repetida" }
  has_many :products

end
