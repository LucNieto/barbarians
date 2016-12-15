class HomeController < ApplicationController
  def index
     @products = Product.all
     #@labels = Label.all
  end




end
