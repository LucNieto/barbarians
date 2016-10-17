module Admin
    class CategoriesController < ApplicationController
        before_action :set_category, only: [:edit, :show, :update, :destroy]
        before_filter :authenticate_user!
        #http_basic_authenticate_with :name => ENV['ADMIN_USERNAME'], :password => ENV['ADMIN_PASSWORD']
      def index
        @categories = Category.all
      end

      def show
      end

      def new
        @category = Category.new
      end

      def create
        @category = Category.new(category_params)
        if @category.save
          redirect_to admin_categories_path, :notice => "categoria creada"
        else
          render "new"
        end
      end

      def edit
      end

      def update
        if @category.update_attributes(category_params)
          redirect_to admin_categories_path, :notice => "Categoria actualizada"
        else
          render "edit"
        end
      end

      def destroy
        @category.destroy
        redirect_to admin_categories_path, :notice => "Categoria borrada"
      end

      private
        def category_params
          params.require(:category).permit(:nombre_categoria)
        end

        def set_category
          @category = Category.find(params[:id])
        end
    end
end

