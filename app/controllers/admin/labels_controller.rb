module Admin
    class LabelsController < ApplicationController
        layout "admin_interface"
        before_action :set_label, only: [:edit, :show, :update, :destroy]
        before_filter :authenticate_user!
      def index
        @labels = Label.all
      end

      def show
      end

      def new
        @label = Label.new
      end

      def create
        @label = Label.new(label_params)
        if @label.save
          redirect_to admin_labels_path, :notice => "Etiqueta creada"
        else
          render "new"
        end
      end

      def edit
      end

      def update
        if @label.update_attributes(label_params)
           redirect_to admin_labels_path, :notice => "Etiqueta actualizada"
        else
          render "edit"
        end
      end

      def destroy
        @label.destroy
        redirect_to admin_labels_path, :notice => "Etiqueta borrada"
      end

      private
        def label_params
          params.require(:label).permit(:nombre_de_etiqueta)
        end

        def set_label
          @label = Label.find(params[:id])
        end
   end
end

