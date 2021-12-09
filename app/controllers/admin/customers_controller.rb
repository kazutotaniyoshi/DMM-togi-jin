class Admin::CustomersController < ApplicationController
  def index
    @customers =Cstomer.all
  end

  def show
    @customer=Customer.find(params[:id])
  end
end



