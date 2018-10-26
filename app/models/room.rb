# == Schema Information
#
# Table name: rooms
#
#  id              :bigint(8)        not null, primary key
#  host_id         :bigint(8)
#  title           :string           not null
#  registration_id :string           not null
#  body            :text             not null
#  image_url       :string           not null
#  prefecture      :string           not null
#  city            :string           not null
#  latitude        :decimal(9, 6)
#  longitude       :decimal(9, 6)
#  max_stay_num    :string           not null
#  check_in_time   :string           not null
#  check_out_time  :string           not null
#  bed_room        :integer          not null
#  bed_num         :integer          not null
#  toilet_num      :integer          not null
#  kitchen_num     :integer          not null
#  facilyty        :string           default(""), not null
#  amenity         :string           default(""), not null
#  pet             :string           default(""), not null
#  child           :text             default(""), not null
#  access          :string           default(""), not null
#  price           :integer          not null
#  review          :decimal(2, 1)    default(0.0), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Room < ApplicationRecord
  # 関連
  belongs_to :host
  has_many :available_dates
  has_many :guests, through: :reserves
  has_many :reserves
  has_many :options, through: :room_options
  has_many :room_options
  has_many :room_reviews

  # アクセサ

  # バリデーション

  # スコープ

  # クラスメソッド
  def self.samle_rooms
    [
      {
        id: 1,
        title: "湘南の海が一望できる別荘で素敵な休日を過ごしませんか？",
        image_url: 'https://ateamateam.herokuapp.com/images/sample_room.jpg',
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 3,
        price: 35000,
        review: 4.0
      }, {
        id: 2,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        image_url: 'https://ateamateam.herokuapp.com/images/sample_room.jpg',
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }, {
        id: 3,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        image_url: 'https://ateamateam.herokuapp.com/images/sample_room.jpg',
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }, {
        id: 4,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        image_url: 'https://ateamateam.herokuapp.com/images/sample_room.jpg',
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }, {
        id: 5,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        image_url: 'https://ateamateam.herokuapp.com/images/sample_room.jpg',
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }, {
        id: 6,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        image_url: 'https://ateamateam.herokuapp.com/images/sample_room.jpg',
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }, {
        id: 7,
        title: "箱根一番人気民泊！気持ちいい朝日で最高の1日を！",
        image_url: 'https://ateamateam.herokuapp.com/images/sample_room.jpg',
        prefecture: "神奈川県",
        city: "箱根",
        max_stay_num: 5,
        price: 35000,
        review: 4.0
      }
    ]
  end

  def self.sample_room
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
    reserved_date = []
    (Date.new(2018, 10, 1)..Date.today).each do |d|
        reserved_date << d
    end
    {
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
      bed_num: 6,
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
      reserved_date: reserved_date,
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
  end
end
