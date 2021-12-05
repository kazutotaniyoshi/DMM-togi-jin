class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @end_user = current_customer
    @end_user.update(customer_params)
    redirect_to  public_customer_path
  end

  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :tel, :postcode, :address, :email, :password, :password_confirmation)
  end
end
