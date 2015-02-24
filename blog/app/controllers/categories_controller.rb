class CategoriesController < ApplicationController
  respond_to :html, :json

  def new
    @category = Category.new
  end

end