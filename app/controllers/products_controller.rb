class ProductsController < ApplicationController
  def index
    @categories = Category.all 
  end

  def show
    @pt_applications = Product.all 
    @categories = Category.all
  end

  def products
    @categories = Category.all 
  end

  def import
    @categories = Category.all   
    Product.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end

end
