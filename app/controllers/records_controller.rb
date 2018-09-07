class RecordsController < ApplicationController
  
  def new
    @record = Record.new
  end
  
  def update
    @record = Record.new(record_params)
  end
  
  private
  
  def record_params
    params.require(:custom_date).permit(:nh4) #finished here, check date picker with this
  end
end