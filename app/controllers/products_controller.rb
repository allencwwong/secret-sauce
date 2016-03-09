class ProductsController < ApplicationController
  def index
    @categories = Category.all 

  end

  def show
    @pt_applications = Product.all 
    @categories = Category.all
  end

  def products_import
    @categories = Category.all    
  end

  def photos_import
    @categories = Category.all  
  end

  def import
    @categories = Category.all  
    Product.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end

  def import_img
    @categories = Category.all 
    Photo.import(params[:file])
    redirect_to root_url, notice: "Images imported."
  end
  
end
