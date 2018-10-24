class Api::RoomsController < ApplicationController
  def index
    room = {
      title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
      prefecture: "神奈川県",
      city: "箱根",
      stay_num: 1,
      max_stay_num: 5,
      price: 35000,
      review: 4.0
    }
    @rooms = [
      {
        title: "湘南の海が一望できる別荘で素敵な休日を過ごしませんか？",
        prefecture: "神奈川県",
        city: "箱根",
        stay_num: 1,
        max_stay_num: 3,
        price: 35000,
        review: 4.0
      }
    ]
    6.times do
      @rooms.push(room)
    end

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
    body = <<~EOS
      全てのナチュラル&マッドウォールハウス！立石東京駅周辺の綺麗な近所。
      多くのバーは、戦争直後から駅の近くに残っています。
      1940年代に東京がどのようなものだったかを感じることができます。
      主要スポットへのアクセス良好(15分~50分)
    EOS
    access = <<~EOS
      バス停まで歩いておよそ17分。
      駐車場は無料です。6台は停められる余裕があります。
    EOS
    @room = {
      title: '湘南の海が一望できる別荘で素敵な休日を過ごしませんか？',
      registration_id: 'M130002147',
      body: body,
      prefecture: '神奈川県',
      city: '箱根',
      stay_num: 1,
      max_stay_num: 5,
      check_in_time: '9:00',
      check_out_time: '~24:00',
      facilyty: %w(Wi-Fi 洗濯機),
      amenity: [
        "シャンプー・リンス",
        "ボディソープ・石鹸",
        "ボディタオル",
        "ハミガキセット",
        "シャワーキャップ",
        "ドライヤー"
      ],
      pet: "available",
      child: "available",
      access: access,
      price: 35000,
      reviews: {
        satisfaction: 4.0,
        cleanliness: 4.0,
        cost_performance: 4.0,
        amenity: 4.0,
        location: 4.0,
        access: 4.0
      },
      room_revies: [
        {
          review: 4.0,
          body: "おすすめです。"
        }, {
          review: 4.0,
          body: "おすすめです。"
        },
      ]
    }
    render json: @room
  end

  def options
    @options = [
      { title: "レンタルシップ" },
      { title: "イタリアンディナー" },
      { title: "マッサージ・エステ" }
    ]

    render json: @options
  end
end
