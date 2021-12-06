class Public::RequestsController < ApplicationController
  def index
  end

  def new
    @request=Request.new
  end

  def show
  end

  def create
  end

  def complate
  end
  params.request(:customer).permit(:name, :time, :comment, :status)
end
