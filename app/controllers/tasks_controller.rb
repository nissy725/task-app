class TasksController < ApplicationController
  def index
    @customer = Customer.all
  end
end
