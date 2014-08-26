class AdminController < ApplicationController

  def index
  	authorize! @update, Gift
  	@gifts = Gift.all
  	@accounts = Account.all
  	@future_occasions = Occasion.order_by_date.future
  end
end
