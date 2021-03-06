class Product < ApplicationRecord
  belongs_to :category
  has_attached_file :image, styles: { medium: "450x450>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :labelings, :dependent => :destroy
  has_many :labels, through: :labelings
end

