class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @classifications = Classification.where(item_id: @item.id).order("created_at ASC")
  end
end
