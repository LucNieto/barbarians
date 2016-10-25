 module Admin
  class ProductsController < ApplicationController
    def index
    end

    def new
      @product = Product.new
    end

    def show
      @product = Product.find(params[:id])
    end

    def create
        @product = Product.new(product_params)
        if @product.save
          redirect_to ["admin",@product], :notice => "Producto creado"
        else
          render "new"
        end
    end
    private
        def product_params
          params.require(:product).permit(:category_id, :producto, :image, :codigo_producto, :descripcion, :votos )
        end

        def set_producto
          @product = Product.find(params[:id])
        end

    def edit
    end
  end
end
