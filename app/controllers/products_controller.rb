class ProductsController < ApplicationController
before_action :set_product, only: [:show]

  def index
      @products = Product.all
  end

  private
        def product_params
          params.require(:product).permit(:category_id, :producto, :image, :codigo_producto, :descripcion, :votos )
        end

        def set_product
          @product = Product.find(params[:id])
        end
end
