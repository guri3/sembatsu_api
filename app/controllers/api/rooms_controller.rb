class Api::RoomsController < ApplicationController
  def index
    @rooms = Room.all

    # TODO 要リファクタリング
    if params[:keyword].present?
      case params[:keyword]
      when 'recommend'
        @rooms = @rooms.order('review DESC')
      when 'niceview'
        id_location_set = []
        @rooms.each do |room|
          id_location_set << [room.id, (room.room_reviews.map(&:location).inject(:+).to_f/room.room_reviews.size).round(1)]
        end
        id_location_set = id_location_set.sort{|a, b| b[1] <=> a[1]}
        ids = id_location_set.map{|o| o[0]}
        @rooms = ids.collect {|id| @rooms.detect {|x| x.id == id.to_i}}
      when 'inexpensive'
        @rooms = @rooms.order('price DESC')
      when 'accessible'
        id_access_set = []
        @rooms.each do |room|
          id_access_set << [room.id, (room.room_reviews.map(&:access).inject(:+).to_f/room.room_reviews.size).round(1)]
        end
        id_access_set = id_access_set.sort{|a, b| b[1] <=> a[1]}
        ids = id_access_set.map{|o| o[0]}
        @rooms = ids.collect {|id| @rooms.detect {|x| x.id == id.to_i}}
      when 'satisfaction'
        id_satisfaction_set = []
        @rooms.each do |room|
          id_satisfaction_set << [room.id, (room.room_reviews.map(&:satisfaction).inject(:+).to_f/room.room_reviews.size).round(1)]
        end
        id_satisfaction_set = id_satisfaction_set.sort{|a, b| b[1] <=> a[1]}
        ids = id_satisfaction_set.map{|o| o[0]}
        @rooms = ids.collect {|id| @rooms.detect {|x| x.id == id.to_i}}
      when 'clean'
        id_cleanliness_set = []
        @rooms.each do |room|
          id_cleanliness_set << [room.id, (room.room_reviews.map(&:cleanliness).inject(:+).to_f/room.room_reviews.size).round(1)]
        end
        id_cleanliness_set = id_cleanliness_set.sort{|a, b| b[1] <=> a[1]}
        ids = id_cleanliness_set.map{|o| o[0]}
        @rooms = ids.collect {|id| @rooms.detect {|x| x.id == id.to_i}}
      when 'equipment'
        id_amenity_set = []
        @rooms.each do |room|
          id_amenity_set << [room.id, (room.room_reviews.map(&:amenity).inject(:+).to_f/room.room_reviews.size).round(1)]
        end
        id_amenity_set = id_amenity_set.sort{|a, b| b[1] <=> a[1]}
        ids = id_amenity_set.map{|o| o[0]}
        @rooms = ids.collect {|id| @rooms.detect {|x| x.id == id.to_i}}
      end
    else
      @rooms = @rooms.order(:id)
    end

    if params[:place].present?
    end

    if params[:checkin].present?
    end

    if params[:checkout].present?
    end

    if params[:stay_num].present?
    end

    if params[:max_price].present?
    end

    if params[:options_id].present?
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
