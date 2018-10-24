class Api::RoomsController < ApplicationController
  def index
    @rooms = [
      {
        id: 1,
        title: "湘南の海が一望できる別荘で素敵な休日を過ごしませんか？",
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 3,
        price: 35000,
        review: 4.0
      }, {
        id: 2,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }, {
        id: 3,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }, {
        id: 4,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }, {
        id: 5,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }, {
        id: 6,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }, {
        id: 7,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }
    ]

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
    child = <<~EOS
      ご使用いただけます。
      12歳以下のお子様は一律1,620円(税込)の施設利用料が掛かります。
      子供料金は、12歳以下の施設利用料1,620円に下記料金を加算しております。
      ご夕食：お子様会席9,180円　又は お子様プレート5,400円
      ご朝食：お子様膳1,620円
      寝具（布団）：3,240円
      ※添い寝は0～12歳（小学生）までご利用いただけます。13歳以上（中学生）は大人でご予約下さい。
      ※新棟「月の道」は6歳以上のご利用となります。
    EOS
    access = <<~EOS
      バス停まで歩いておよそ17分。
      駐車場は無料です。6台は停められる余裕があります。
    EOS
    available_date = []
    (Date.tomorrow..Date.new(2018, 11, -1)).each do |d|
      available_date << d
    end
    @room = {
      id: 1,
      title: '湘南の海が一望できる別荘で素敵な休日を過ごしませんか？',
      registration_id: 'M130002147',
      body: body,
      image_url: 'https://ateamateam.herokuapp.com/images/sample_room.jpg',
      prefecture: '神奈川県',
      city: '箱根',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: 3,
      check_in_time: '9:00~',
      check_out_time: '~24:00',
      bed_room: 2,
      bde_num: 6,
      toilet_num: 2,
      kitchen_num: 1,
      facilyty: [
        'Wi-Fi',
        '洗濯機'
      ],
      amenity: [
        'シャンプー・リンス',
        'ボディソープ・石鹸',
        'ボディタオル',
        'ハミガキセット',
        'シャワーキャップ',
        'ドライヤー'
      ],
      pet: 'ご一緒に宿泊できます。',
      child: child,
      access: access,
      price: 35000,
      available_date: available_date,
      options: [
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
      ],
      reviews: {
        satisfaction: 4.0,
        cleanliness: 4.0,
        cost_performance: 4.0,
        amenity: 4.0,
        location: 4.0,
        access: 4.0
      },
      room_reviews: [
        {
          id: 1,
          review: 4.0,
          body: "おすすめです。",
          created_at: Time.current.ago(1.week)
        }, {
          id: 2,
          review: 4.0,
          body: "おすすめです。",
          created_at: Time.current.ago(2.week)
        }
      ]
    }
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
