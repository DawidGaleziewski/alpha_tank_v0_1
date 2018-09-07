class TanksController < ApplicationController
  
  def index 
   
   @tanks = Tank.all 
    
  end
  
  def show
    @tank = Tank.find(params[:id])
    
  end
  
  def new
    @tank = Tank.new
  end
  
  def create
    @tank = Tank.new(tank_params)
     if @tank.save(tank_params)
       flash[:notice] = 'New tank created'
       redirect_to tanks_path
     else
       render 'new'
     end
  end
  
  def edit 
    @tank = Tank.find(params[:id])
    
  end
  
  def update
    @tank = Tank.find(params[:id])
    if @tank.update(tank_params)
      flash[:notice] = 'Tank updated'
      redirect_to tank_path(@tank)
    else
      render 'edit'
    end
  
  end
  
  private
  
  def tank_params
    params.require(:tank).permit(:user_id, :title, :created_at, :updated_at)
  end
  
end