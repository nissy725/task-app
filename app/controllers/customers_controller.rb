class CustomersController < ApplicationController
  

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :product, :count).merge(user_id: current_user.id)
  end
end