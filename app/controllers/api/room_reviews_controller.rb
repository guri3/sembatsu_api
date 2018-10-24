class Api::RoomReviewsController < ApplicationController
  def index
    @room_reviews = [
      {
        id: 1,
        review: 4.0,
        body: "おすすめです。",
        created_at: Time.current.ago(1.week)
      }, {
        id: 2,
        review: 4.2,
        body: "おすすめです。",
        created_at: Time.current.ago(2.week)
      }, {
        id: 3,
        review: 3.3,
        body: "おすすめです。",
        created_at: Time.current.ago(3.week)
      }, {
        id: 4,
        review: 2.2,
        body: "おすすめです。",
        created_at: Time.current.ago(4.week)
      }, {
        id: 5,
        review: 4.0,
        body: "おすすめです。",
        created_at: Time.current.ago(5.week)
      }
    ]

    render json: @room_reviews
  end
end
