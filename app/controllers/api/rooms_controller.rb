class Api::RoomsController < ApplicationController
  def index
    @rooms = Room.sample_room

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
    @room = Room.sample_room

    render json: @room
  end

  def options
    @options = [
      {
        id: 1,
        name: 'レンタルシップ',
        image_url: "https://ateamateam.herokuapp.com/images/sample_room.jpg"
      }, {
        id: 2,
        name: 'イタリアンディナー',
        image_url: "https://ateamateam.herokuapp.com/images/sample_room.jpg"
      }, {
        id: 3,
        name: '中華料理',
        image_url: "https://ateamateam.herokuapp.com/images/sample_room.jpg"
      }
    ]

    render json: @options
  end
end
