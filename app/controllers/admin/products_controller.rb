 module Admin
  class ProductsController < ApplicationController
      layout "admin_layout"
      before_action :set_product, only: [:edit, :show, :update, :destroy]
      before_filter :authenticate_user!
    def index
      @products = Product.all
    end

    def show
    end

    def new
      @product = Product.new
    end

    def create
        #binding.pry
        @product = Product.new(product_params)
        if @product.save
          redirect_to ["admin",@product], :notice => "Producto creado",class: "alert alert-success"
        else
          render "new"
        end
    end

    def update
        if @product.update_attributes(product_params)
          redirect_to admin_products_path,class: "alert alert-info", :notice => "Producto actualizado",class: "alert alert-success"
        else
          render "edit"
        end
    end

    def destroy
        @product.destroy
        redirect_to admin_products_path, :notice =>"Producto borrado",class: "alert alert-success"
    end

    private
        def product_params
          params.require(:product).permit(:category_id, :producto, :image, :codigo_producto, :descripcion, :votos, label_ids: [])
        end

        def set_product
          @product = Product.find(params[:id])

        end

    def edit
    end
  end
end
