class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end
  

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

  def destroy
    @customer = Customer.find(params[:id])
    if @customer.destroy
      redirect_to customers_path
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :product, :count).merge(user_id: current_user.id)
  end
end
