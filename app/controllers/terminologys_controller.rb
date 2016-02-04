class TerminologysController < ApplicationController
  def index
    @terminologys = Terminology.all
  end

  def new
    @terminology = Terminology.new
  end

  def create
    @terminology = Terminology.new(review_params)

    if @terminology.save
      redirect_to classification_path(@terminology)
    else
      render 'new'
    end
  end

  private 
    def review_params
      params.require(:terminology).permit(:en_US, :zh_TW, :classification_id)
    end

end
