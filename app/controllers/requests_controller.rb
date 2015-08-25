class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    # render text: params[:request]
    # @request = Request.
    # render text: params[:request][:name]
    @request = Request.new(params.require(:request).permit(:name, :email, :department, :message))
    @request.save
    redirect_to root_path
  end

end
