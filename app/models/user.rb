class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :likes, dependent: :destroy
  has_many :products, through: :likes

def like!(product)
  self.likes.create!(product_id: product.id)
end

# destroys a heart with matching post_id and user_id
def unlike!(product)
  like = self.likes.find_by_product_id(product.id)
  like.destroy!
end

# returns true of false if a post is hearted by user
def like?(product)
  self.likes.find_by_product_id(product.id)
end


end
