class Category < ApplicationRecord
<<<<<<< HEAD
  validates :nombre_categoria, :presence => { :message => " en blanco" }, :uniqueness => { :message => " repetida" }
=======
  validates :nombre_categoria, presence: true, uniqueness: true
>>>>>>> master
end
