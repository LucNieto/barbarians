class Label < ApplicationRecord
    #validates :nombre_de_etiqueta, :presence => { :message => " en blanco" }, :uniqueness => { :message => " repetida" }
    validates :nombre_de_etiqueta, presence: true, uniqueness: true
end
