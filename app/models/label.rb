class Label < ApplicationRecord
    validates :nombre_de_etiqueta, :presence => { :message => " en blanco" }, :uniqueness => { :message => " repetida" }
    has_many :label_products
    has_many :products, :through => :label_products
    #validates :nombre_de_etiqueta, presence: true, uniqueness: true
end
