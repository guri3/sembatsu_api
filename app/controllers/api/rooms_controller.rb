class Api::RoomsController < ApplicationController
  def index
    @rooms = Room.all

    if params[:keyword].present?
      case params[:keyword]
      when 'recommend'
        @rooms.order(:review)
      when 'scenery'
        render json: @rooms
      when 'inexpensive'
        @rooms.order(:price)
      when 'accessible'
      when 'satisfaction'
      when 'clean'
      when 'equipment'
      end
    end

    if params[:limit].present?
      @rooms = @rooms.limit(params[:limit])
    end

    render 'index', formats: 'json', handlers: 'jbuilder'
    # end
  end

  def show
    # @room = Room.sample_room
    @room = Room.find(params[:id])

    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def options
    @options = Option.all

    render json: @options
  end
end
