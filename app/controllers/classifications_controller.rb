class ClassificationsController < ApplicationController

  def show
    @items = Item.all
    @classification = Classification.find(params[:id])
    @terminologys = Terminology.where(classification_id: @classification.id).order("created_at ASC")
  end
end
