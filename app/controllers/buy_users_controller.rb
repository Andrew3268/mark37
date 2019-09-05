class BuyUsersController < ApplicationController
  def me
    @buys = Buy.all.order("created_at DESC")
  end
end
