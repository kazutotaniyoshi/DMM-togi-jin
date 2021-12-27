class Public::RequestsController < ApplicationController
  before_action :authenticate_customer!
  def index
    @requests = Request.all
  end

  def new
    @request=Request.new
  end

  def show

    @request = Request.find(params[:id])
    @inform = Inform.find(params[:id])

  end

  def create
    @request = Request.new(request_params)
    @request.customer_id = current_customer.id
    if@request.save
    redirect_to complete_public_requests_path
    else
    render :new
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to public_requests_path
  end

  def complate
  end

  private

  def request_params
    params.require(:request).permit(:date,:name, :time, :comment, :status)
  end
end
