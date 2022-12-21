class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
  end

  private
  
  def item_params
    params.require(:item).permit(:name, :description, :category_id, :condition_id, :shipping_charge_id, :prefecture_id, :days_to_ship_id, :price, :image).merge(user_id: current_user.id)
  end
end
