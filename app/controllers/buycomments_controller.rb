class BuycommentsController < ApplicationController
  before_action :set_buy
  before_action :authenticate_user!

  def create
    @buycomment = @buy.buycomments.new(buycomment_params)
    @buycomment.user = current_user
    @buycomment.save
  end

  def destroy
    @buycomment = @buy.buycomments.find(params[:id])
    @buycomment_id = @buycomment.id
    @buycomment.destroy
  end

  private
  def buycomment_params
    params.require(:buycomment).permit(:buybody, :buy_id)
  end

  def set_buy
    @buy = Buy.find(params[:buy_id])
  end

end
