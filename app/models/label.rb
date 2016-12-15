class Label < ApplicationRecord
    validates :nombre_de_etiqueta, :presence => { :message => " en blanco" }, :uniqueness => { :message => " repetida" }
    #validates :nombre_de_etiqueta, presence: true, uniqueness: true
    #has_and_belongs_to_many :products
    has_many :labelings,  :dependent => :destroy, :autosave => true , :inverse_of => :label
    has_many :products, through: :labelings
end
