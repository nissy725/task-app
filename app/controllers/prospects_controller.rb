class ProspectsController < ApplicationController
  def index
    @customers = Customer.all
    @users = User.all
  end
end
