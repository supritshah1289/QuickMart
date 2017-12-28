class ItemsController < ApplicationController

  before_action :require_user, only: [:create, :new, :edit, :destroy, :update, :show]

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      flash[:success] = "Item added"
      redirect_to(:action => 'show', :id =>@item.id)
    else
      render 'edit'
    end
  end

  def new
    @item = Item.new
    @categories = Category.all
  end

  def create
    @item = Item.create(item_create_params)
    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @item = Item.destroy(params[:id])
    if @item.destroy
      redirect_to root_path
    else
      render 'show'
    end
  end

  private
  def item_params
    params.require(:item).permit(:title, :description, :price, :available, :image)
  end

  def item_create_params
    params.require(:item).permit(:title,:description, :price, :available, :image, :category_id )
  end
end
