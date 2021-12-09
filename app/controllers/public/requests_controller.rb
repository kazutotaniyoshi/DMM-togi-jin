class Public::RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
    @request=Request.new
  end

  def show
    @request = Request.find(params[:id])
  end

  def create
    @request = Request.new(request_params)
    @request.customer_id = current_customer.id
    @request.save
    redirect_to complete_public_requests_path
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
    params.require(:request).permit(:name, :time, :comment, :status)
  end
end
