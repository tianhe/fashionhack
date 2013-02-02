class StckItController < ApplicationController

  def create
  	success = StckIt.create(url: params[:url], user_id: params[:user_id])
  	respond_to do |format|
  	  format.json { render :json => success }
  	end
  end

  def present
  	exists = StckIt.find_by_url_and_user_id(params[:url], params[:user_id]).present?
  	respond_to do |format|
  	  format.json { render :json => exists }
  	end
  end

  def index
  	@stock = StckIt.group('url').select('url, count(user_id) as count')
  end
end

