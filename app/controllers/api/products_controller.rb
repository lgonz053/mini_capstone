class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    search_terms = params[:name]
    price = params[:sort]
    desc = params[:sort_order]

    if search_terms
      @products = @products.where("name iLike ?", "%#{search_terms}%")
      @products = @products.order(:id => :asc)
    elsif price
      @products = @products.order(:price => :asc)
    elsif price && desc
      @products = @products.order(:price => :desc)
    end

    render 'index.json.jbuilder'
  end
  
  def create
    @product = Product.new(
                           name: params[:name],
                           price: params[:price],
                           image_url: params[:image_url],
                           description: params[:description]
                          )

    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end


  def show
    product_id = params[:id]
    @product = Product.find(product_id)
    render 'show.json.jbuilder'
  end


  def update
    @product = Product.find(params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock


    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def delete
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Successfully removed product"}
  end
end
