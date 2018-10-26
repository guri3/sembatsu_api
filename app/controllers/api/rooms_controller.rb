class Api::RoomsController < ApplicationController
  def index
    @rooms = Room.all

    # if params[:keyword].present?
    #   case params[:keyword]
    #   when 'scenery'
    #     render json: @rooms
    #   when 'inexpensive'
    #     render json: @rooms
    #   when 'accessible'
    #     render json: @rooms
    #   when 'satisfaction'
    #     render json: @rooms
    #   when 'clean'
    #     render json: @rooms
    #   when 'equipment'
    #     render json: @rooms
    #   else
    #     render json: @rooms
    #   end
    # else
    render 'index', formats: 'json', handlers: 'jbuilder'
    # end
  end

  def show
    @room = Room.sample_room

    render json: @room
  end

  def options
    @options = Option.all

    render json: @options
  end
end
