class Api::RoomsController < ApplicationController
  def index
    @rooms = Room.sample_rooms

    # カテゴリごとの部屋を抜き出す必要があったら処理を行う
    # 現状全て同じものを返している
    if params[:keyword].present?
      case params[:keyword]
      when 'scenery'
        render json: @rooms
      when 'inexpensive'
        render json: @rooms
      when 'accessible'
        render json: @rooms
      when 'satisfaction'
        render json: @rooms
      when 'clean'
        render json: @rooms
      when 'equipment'
        render json: @rooms
      else
        render json: @rooms
      end
    else
      render json: @rooms
    end
  end

  def show
    room = Room.find(params[:id])
    @room = Room.sample_room

    render json: @room
  end

  def options
    @options = Option.all

    render json: @options
  end
end
