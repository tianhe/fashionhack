class StckItController < ApplicationController
  def create
  	StckIt.create(params[:url], params[:user_id])
  end

  def index
  	@stock = StckIt.all
  end
end
