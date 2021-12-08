class Public::RequestsController < ApplicationController
  def index
  end

  def new
    @request=Request.new
  end

  def show
  end

  def create
    @request = Request.new(request_params)
    @request.customer_id = current_customer.id
    @request.save
    redirect_to complete_public_requests_path
  end

  def complate
  end

  private

  def requests_params
    params.require(:requests).permit(:name, :time, :comment, :status)
  end
end
