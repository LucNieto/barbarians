class Label < ApplicationRecord
    validates :nombre_de_etiqueta, :presence => { :message => " en blanco" }, :uniqueness => { :message => " repetida" }

    has_many :labelings,  :dependent => :destroy
    has_many :products, through: :labelings
end
