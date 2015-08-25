class RequestsController < ApplicationController
  def index
    if params[:userinput].present?
      @requests = Request.where("name ILIKE ? OR department ILIKE ?", "%#{params[:userinput]}%", "%#{params[:userinput]}%")
    else
      @requests = Request.all
    end
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(params.require(:request).permit(:name, :email, :department, :message))
    @request.save
    redirect_to root_path
  end

  def show
    @request = Request.find(params[:id])
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update(params.require(:request).permit(:name, :email, :department, :message))
    redirect_to :back
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to root_path
  end

end
