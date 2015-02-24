class CategoriesController < ApplicationController
  respond_to :html, :json

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "category successfully created!"
    else
      flash[:notice] = "Error: category not created"
    end
    respond_with(@category, location: new_post_url)
  end

  private

  def category_params
    params.require(:category).permit!
  end

end