class ProductsController < ApplicationController
  def index
    @categories = Category.all 
    photos = Photo.all
    @cat_thumbs = {}

      #missing fall back feature where if cat missing image it will mess up display order

      photos.each do |photo|

      #current last in photo will be displaying photo   
        if photo.thumb
          @cat_thumbs[photo.category_id] = photo.photo_url
        end
       end 
  end

  def test
 

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
