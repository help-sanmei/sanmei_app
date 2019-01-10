class StaffsController < ApplicationController
  
  def new
    @staff = Staff.new
  end
  
  def create
    @staff = Staff.create
  end
  
  def index
    @staffs = Staff.all
  end
  
  def show
    @staff = Staff.find(params[:id])
  end
  
  def edit
    @staff = staff.find(params[:id])
  end
  
  def update
    @staff = staff.find(params[:id])
  end
  
  # def destroy
  #   @staff = staff.find(params[:id])
  # end
  
end
