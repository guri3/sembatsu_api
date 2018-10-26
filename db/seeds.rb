# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.create(
  email: "guest1@example.com",
  password: "password",
  name: "guest1"
)

Host.create(
  email: "host1@example.com",
  password: "password",
  name: "host1"
)

Option.create(
  [
    {
      name: '中華料理',
      image_url: 'https://ateamateam.herokuapp.com/images/Chinese.png'
    },
    {
      name: 'オーガニック料理',
      image_url: 'https://ateamateam.herokuapp.com/images/dinner.png'
    },
    {
      name: '海鮮料理',
      image_url: 'https://ateamateam.herokuapp.com/images/Fish.png'
    },
    {
      name: '懐石料理',
      image_url: 'https://ateamateam.herokuapp.com/images/kaiseki.png'
    },
    {
      name: '郷土料理',
      image_url: 'https://ateamateam.herokuapp.com/images/Party.png'
    },
    {
      name: 'イタリアン',
      image_url: 'https://ateamateam.herokuapp.com/images/Italian.png'
    },
    {
      name: 'フレンチ',
      image_url: 'https://ateamateam.herokuapp.com/images/French.png'
    },
    {
      name: 'お寿司',
      image_url: "https://ateamateam.herokuapp.com/images/Japanese.png"
    },
    {
      name: '黒毛和牛ステーキ',
      image_url: "https://ateamateam.herokuapp.com/images/steak.png"
    },
    # {
    #   name: 'ふぐ料理',
    #   image_url: "https://ateamateam.herokuapp.com/images/sukiyaki.png"
    # },
    {
      name: 'すき焼き',
      image_url: "https://ateamateam.herokuapp.com/images/sukiyaki.png"
    }
  ]
)

body1 = <<~EOS
箱根の奥座敷、豊富な水を湛えた芦ノ湖と雄大な自然が五感に囁きかける。
心地よいぬくもりに身を委ねれば花がほころぶようにふわりと心解き放たれる。
EOS
body2 = <<~EOS
全てのナチュラル&マッドウォールハウス！立石東京駅周辺の綺麗な近所。
多くのバーは、戦争直後から駅の近くに残っています。
1940年代に東京がどのようなものだったかを感じることができます。
主要スポットへのアクセス良好(15分~50分)
EOS
body3 = <<EOS
都心にありながら、芝公園の豊かな緑に囲まれています。2018年3月リニューアル。大切な方と上質で特別な時間をお過ごしください。
EOS
body4 = <<~EOS
那覇空港から車で約50分。沖縄でも有数の美しい観光スポットのほぼ中心。マリーナへも近く、マリンスポーツもより身近に楽しめるロケーション。近隣にはゴルフ場が控え、レジャースポットとしてのポテンシャルの高さを誇ります。沖縄を知る人の憧れでもあるこの地で素敵な時間を過ごしてみませんか？
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
access1 = <<~EOS
バス停まで歩いておよそ17分。
駐車場は無料です。6台は停められる余裕があります。
EOS
access2 = <<~EOS
バス停まで歩いておよそ10分。
EOS
access3 = <<~EOS
最寄り駅まで徒歩5分
駐車場は無料です。6台分用意してあります。
EOS

host_id = Host.first.id
Room.create(
  [
    {
      host_id: host_id,
      title: '湘南の海が一望できる別荘で素敵な休日を過ごしませんか？',
      registration_id: 'M0000001',
      body: body1,
      image_url: 'https://ateamateam.herokuapp.com/images/room1.jpg',
      prefecture: '神奈川県',
      city: '箱根',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: 3,
      check_in_time: '9:00~',
      check_out_time: '~24:00',
      bed_room_num: 2,
      bed_num: 6,
      toilet_num: 2,
      kitchen_num: 1,
      facilyty: 'Wi-Fi,洗濯機',
      amenity: 'シャンプー・リンス,ボディソープ・石鹸,ボディタオル,ハミガキセット,シャワーキャップ,ドライヤー',
      pet: 'ご一緒に宿泊できます。',
      child: child,
      access: access,
      price: 35000,
    },
    {
      host_id: host_id,
      title: '広大な自然に包まれ心からリラックスできる時間を',
      registration_id: 'M0000002',
      body: body,
      image_url: 'https://ateamateam.herokuapp.com/images/room2.jpg',
      prefecture: '神奈川県',
      city: '箱根',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: 3,
      check_in_time: '9:00~',
      check_out_time: '~24:00',
      bed_room_num: 2,
      bed_num: 6,
      toilet_num: 2,
      kitchen_num: 1,
      facilyty: 'Wi-Fi,洗濯機',
      amenity: 'シャンプー・リンス,ボディソープ・石鹸,ボディタオル,ハミガキセット,シャワーキャップ,ドライヤー',
      pet: 'ご一緒に宿泊できます。',
      child: child,
      access: access2,
      price: 35000,
    },
    {
      host_id: host_id,
      title: '湘南の海が一望できる別荘で素敵な休日を過ごしませんか？',
      registration_id: 'M0000003',
      body: body,
      image_url: 'https://ateamateam.herokuapp.com/images/room3.jpg',
      prefecture: '神奈川県',
      city: '箱根',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: 3,
      check_in_time: '9:00~',
      check_out_time: '~24:00',
      bed_room_num: 2,
      bed_num: 6,
      toilet_num: 2,
      kitchen_num: 1,
      facilyty: 'Wi-Fi,洗濯機',
      amenity: 'シャンプー・リンス,ボディソープ・石鹸,ボディタオル,ハミガキセット,シャワーキャップ,ドライヤー',
      pet: 'ご一緒に宿泊できます。',
      child: child,
      access: access,
      price: 35000,
    },
    {
      host_id: host_id,
      title: '湘南の海が一望できる別荘で素敵な休日を過ごしませんか？',
      registration_id: 'M0000004',
      body: body,
      image_url: 'https://ateamateam.herokuapp.com/images/room4.jpg',
      prefecture: '神奈川県',
      city: '箱根',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: 3,
      check_in_time: '9:00~',
      check_out_time: '~24:00',
      bed_room_num: 2,
      bed_num: 6,
      toilet_num: 2,
      kitchen_num: 1,
      facilyty: 'Wi-Fi,洗濯機',
      amenity: 'シャンプー・リンス,ボディソープ・石鹸,ボディタオル,ハミガキセット,シャワーキャップ,ドライヤー',
      pet: 'ご一緒に宿泊できます。',
      child: child,
      access: access,
      price: 35000,
    },
    {
      host_id: host_id,
      title: '湘南の海が一望できる別荘で素敵な休日を過ごしませんか？',
      registration_id: 'M0000005',
      body: body,
      image_url: 'https://ateamateam.herokuapp.com/images/room1.jpg',
      prefecture: '神奈川県',
      city: '箱根',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: 3,
      check_in_time: '9:00~',
      check_out_time: '~24:00',
      bed_room_num: 2,
      bed_num: 6,
      toilet_num: 2,
      kitchen_num: 1,
      facilyty: 'Wi-Fi,洗濯機',
      amenity: 'シャンプー・リンス,ボディソープ・石鹸,ボディタオル,ハミガキセット,シャワーキャップ,ドライヤー',
      pet: 'ご一緒に宿泊できます。',
      child: child,
      access: access,
      price: 35000,
    },
    {
      host_id: host_id,
      title: '湘南の海が一望できる別荘で素敵な休日を過ごしませんか？',
      registration_id: 'M0000006',
      body: body,
      image_url: 'https://ateamateam.herokuapp.com/images/room2.jpg',
      prefecture: '神奈川県',
      city: '箱根',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: 3,
      check_in_time: '9:00~',
      check_out_time: '~24:00',
      bed_room_num: 2,
      bed_num: 6,
      toilet_num: 2,
      kitchen_num: 1,
      facilyty: 'Wi-Fi,洗濯機',
      amenity: 'シャンプー・リンス,ボディソープ・石鹸,ボディタオル,ハミガキセット,シャワーキャップ,ドライヤー',
      pet: 'ご一緒に宿泊できます。',
      child: child,
      access: access,
      price: 35000,
    },
    {
      host_id: host_id,
      title: '湘南の海が一望できる別荘で素敵な休日を過ごしませんか？',
      registration_id: 'M0000007',
      body: body,
      image_url: 'https://ateamateam.herokuapp.com/images/room3.jpg',
      prefecture: '神奈川県',
      city: '箱根',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: 3,
      check_in_time: '9:00~',
      check_out_time: '~24:00',
      bed_room_num: 2,
      bed_num: 6,
      toilet_num: 2,
      kitchen_num: 1,
      facilyty: 'Wi-Fi,洗濯機',
      amenity: 'シャンプー・リンス,ボディソープ・石鹸,ボディタオル,ハミガキセット,シャワーキャップ,ドライヤー',
      pet: 'ご一緒に宿泊できます。',
      child: child,
      access: access,
      price: 35000,
    }
  ]
)

Room.all.each do |room|
  (Date.new(2018, 10, 1)..Date.today).each do |d|
    room.reserved_dates.create(reserved_date: d)
  end

  Option.all.sample(5).each do |option|
    RoomOption.create(room_id: room.id, option_id: option.id)
  end

  5.times do
    room.room_reviews.create(
      satisfaction: rand(0..5),
      cleanliness: rand(0..5),
      cost_performance: rand(0..5),
      amenity: rand(0..5),
      location: rand(0..5),
      access: rand(0..5),
      body: 'おすすめです。'
    )
  end
  ave_sum = 0
  room.room_reviews.each do |rr|
    ave = rr.satisfaction + rr.cleanliness + rr.cost_performance + rr.amenity + rr.location + rr.access
    ave_sum += ave
  end
  room.review = (ave_sum.to_f / (room.room_reviews.size * 6)).round(1)
  room.save!
end
