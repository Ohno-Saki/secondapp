class ApplicationController < ActionController::Base
before_action :room_search

private

  def room_search
    @q = Room.ransack(params[:q])
    @rooms = @q.result
  end
end
