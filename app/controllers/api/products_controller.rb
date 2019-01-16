class Api::ProductsController < ApplicationController
  def display_information
    @inventory = Product.all
    render "inventory_view.json.jbuilder"
  end
end
