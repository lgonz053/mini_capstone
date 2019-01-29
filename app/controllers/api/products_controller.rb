class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    search_terms = params[:search]
    
    if search_terms
      @products = @products.where("name iLIKE ?", "%#{ search_terms }%")
    end

    discount = params[:discount]

    if discount
      @products = @products.where("price < ?", 10)
    end

    sort_atrribute = params[:sort]
    sort_order = params[:sort_order]

    if sort_atrribute && sort_order
      @products = @products.order(sort_atrribute => sort_order)
    elsif sort_atrribute
      @products = @products.order(sort_atrribute)
    else
      @products = @products.order(:id)
    end

    render 'index.json.jbuilder'
  end
  
  def create
    @product = Product.new(
                           name: params[:name],
                           price: params[:price],
                           description: params[:description],
                           supplier_id: params[:supplier_id]
                          )

    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end


  def show
    @current_user = current_user
    product_id = params[:id]
    @product = Product.find(product_id)
    render 'show.json.jbuilder'
  end


  def update
    @product = Product.find(params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock
    @product.supplier_id = params[:supplier_id] || @product.supplier_id

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
