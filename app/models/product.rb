class Product < ApplicationRecord
  attr_accessor :label_ids, :nombre_de_etiqueta
  belongs_to :category
  has_attached_file :image, styles: { medium: "450x450>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  #has_and_belongs_to_many :labels
  has_many :labelings
  has_many :labels, through: :labelings
end

