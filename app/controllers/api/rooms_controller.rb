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
        @rooms = @rooms.order('price')
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
      ids = @rooms.where('prefecture LIKE ?', "%#{params[:place]}%").ids
      ids << @rooms.where('city LIKE ?', "%#{prams[:place]}%").ids
      @rooms = @rooms.where(id: ids.flatten)
    end

    if params[:checkin].present? && params[:checkout].present?
      ids = []
      @rooms.each do |room|
        checkin = Date.parse(params[:checkin])
        checkout = Date.parse(params[:checkout])
        check = (checkin..checkout).to_a
        flg = true
        room.reserved_dates.map(&:reserved_date).each do |rd|
          if check.include?(rd)
            flg = false
            break
          end
        end
        ids << room.id if flg == true
      end
      @rooms = @rooms.where(id: ids)
    end

    if params[:stay_num].present?
      @rooms = @rooms.select{|room| room.max_stay_num >= params[:stay_num].to_i}
    end

    if params[:max_price].present?
      @rooms = @rooms.select{|room| params[:max_price].to_i >= room.price}
    end

    if params[:option_id].present?
      ids = Option.find(params[:option_id]).rooms.ids
      @rooms = @rooms.where(id: ids)
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

  def reservation
    json = JSON.parse(request.body.read)
    from = Date.parse(json["from"])
    to = Date.parse(json["to"])
    reserve = Reserve.create(
      guest_id: Guest.first,
      room_id: json["room_id"],
      from: from,
      to: to,
      reserve_date: Date.today
    )
    room = Room.find(json["room_id"])
    (from..to).each do |date|
      room.reserved_dates.create(reserved_date: date)
    end

    render json: { message: "予約が完了しました" }
  end
end
