class RoomsController < ApplicationController
  before_action :room_search
  
  def index
    @rooms = Room.where(user_id: current_user.id)
  end
  
  def new
    @room = Room.new
  end
  
  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:notice] = "ルーム情報を登録しました"
      redirect_to room_path(@room)
    else
      render "new"
    end
  end
  
  def show
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end
  
  def edit
  end
  
  def update
  end
  
  private
  
  def room_params
    params.require(:room).permit(:room_name,:room_introduction,:room_price,:room_adress,:room_image).merge(user_id: current_user.id)
  end  
end
