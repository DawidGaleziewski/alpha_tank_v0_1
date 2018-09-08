class RecordsController < ApplicationController
  
  def new
    @record = Record.new
  end
  
  def create
    @record = Record.new(record_params)
    @record.user = User.first
    @record.tank = Tank.first
    if @record.save
      flash[:notice] = 'Added new record'
    redirect_to tanks_path
    else
      render 'new'
    end
  end
  
  def update
    @record = Record.new(record_params)
  end
  
  private
  
  def record_params
    params.require(:record).permit(:user_id, :tank_id,:custom_date,:nh4, :no2, :no3, :ph, :gh, :kh) 
  end
end