class CategoriesController < ApplicationController
  before_action :require_user, only: [:create, :new, :edit, :destroy, :update]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @items = @category.items
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to '/categories'
    else
      render 'new'
    end
  end

  def destroy
    @category = Category.destroy(params[:id])
    if @category.destroy
      redirect_to root_path
    else
      render 'show'
    end
  end

  private
  def category_params
    params.require(:category).permit(:title, :image, :description)
  end

end
