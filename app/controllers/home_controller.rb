class HomeController < ApplicationController
  def top
    @schedules = Schedule.all
  end
  
  def create
    @schedules = Schedule.new(params.permit(:id, :tittle, :startday, :endday, :allday, :schedulememo))
      if @schedules.save
        flash[:notice] = "登録が完了しました。"
        redirect_to "/"
      else
        flash[:notice] = @schedules.errors.full_messages
        redirect_to "/new"
      end
  end
  
  def show
    @schedules = Schedule.find_by(id: params[:id])
    
  end
  
  def destroy
    @schedule = Schedule.find_by(id: params[:id])
    @schedule.destroy
    flash[:notice] = "削除されました。"
    redirect_to "/"
  end  
  
  def edit
    @schedules = Schedule.find_by(id: params[:id])
  end      
  
  def update
    @schedules = Schedule.find_by(id: params[:id])
    if @schedules.update(params.permit(:tittle, :startday, :endday, :allday, :schedulememo))
      flash[:notice] = "更新されました。"
      redirect_to "/"
    else
      flash[:notice] = @schedules.errors.full_messages
      redirect_to "/#{@schedules.id}/edit"
    end
  end  
  
end  
