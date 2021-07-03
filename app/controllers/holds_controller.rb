class HoldsController < ApplicationController
  def index
    @customers = Customer.all
    @users = User.all
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
    @customers = @user.customers
  end

  def customer_params
    params.require(:customer).permit(:name, :product, :count, :status_id).merge(user_id: current_user.id)
  end
end
