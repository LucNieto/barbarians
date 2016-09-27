class Category < ApplicationRecord
  validates :nombre_categoria, presence: true, uniqueness: true
end
