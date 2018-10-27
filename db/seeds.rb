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

body = "那覇空港から車で約50分。沖縄でも有数の美しい観光スポットのほぼ中心。マリーナへも近く、マリンスポーツもより身近に楽しめるロケーション。近隣にはゴルフ場が控え、レジャースポットとしてのポテンシャルの高さを誇ります。沖縄を知る人の憧れでもあるこの地で素敵な時間を過ごしてみませんか？"
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
accesses = [
  "バス停まで歩いておよそ17分。\n
  駐車場は無料です。6台は停められる余裕があります。",
  "バス停まで歩いておよそ10分",
  "最寄り駅まで徒歩5分\n
  駐車場は無料です。6台分用意してあります。"
]

host_id = Host.first.id
Room.create(
  [
    {
      host_id: host_id,
      title: '湘南の海が一望できる別荘で素敵な休日を過ごしませんか？',
      registration_id: 'M0000001',
      body: "箱根の奥座敷、豊富な水を湛えた芦ノ湖と雄大な自然が五感に囁きかける。\n心地よいぬくもりに身を委ねれば花がほころぶようにふわりと心解き放たれる。",
      image_url: 'https://ateamateam.herokuapp.com/images/room1.jpg',
      prefecture: '神奈川県',
      city: '箱根',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: '広大な自然に包まれ心からリラックスできる時間を',
      registration_id: 'M0000002',
      body: "全てのナチュラル&マッドウォールハウス！立石東京駅周辺の綺麗な近所。\n多くのバーは、戦争直後から駅の近くに残っています。\n1940年代に東京がどのようなものだったかを感じることができます。\n主要スポットへのアクセス良好(15分~50分)",
      image_url: 'https://ateamateam.herokuapp.com/images/room2.jpg',
      prefecture: '東京都',
      city: '東京',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: '素敵な夜景とともに過ごす夜',
      registration_id: 'M0000003',
      body: "東京タワーが一望できる好立地。\n素敵な夜景で特別な日を演出します。",
      image_url: 'https://ateamateam.herokuapp.com/images/room3.jpg',
      prefecture: '東京都',
      city: '東京',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: 'プライベートビーチのように美しい海を独占',
      registration_id: 'M0000004',
      body: "美しいビーチまで徒歩わずか30秒。まるでプライベートビーチのように独占していただけます。\nオーシャンビューの邸宅をまるごとお貸しする、別荘スタイルのリゾートレジデンス。\n海とつながるようなプライベート温水プール、BBQが楽しめるガーデン、美しい海を眺めるテラス付きです。\n一日一組様限定、大切な方とプライベートな空間で至福のひとときをお過ごしください。",
      image_url: 'https://ateamateam.herokuapp.com/images/room4.jpg',
      prefecture: '沖縄県',
      city: '名護',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: 'ここにしかない美しいサンセットの海を望む',
      registration_id: 'M0000005',
      body: "一棟ずつ独立したヴィラにご用意したのは、リゾート感あふれる温水プライベートプールに、\nオーシャンビューを独り占めするルーフテラス、寛ぎのデイベッド。\nそして、誰にも邪魔されずに楽しむ、佐和田の浜の美しいサンセット。\nご滞在中は、お客様だけのプライベートな空間となります。\n離島ならではの美しい風景とともに、大切な方と幸せな時をお過ごしください。",
      image_url: 'https://ateamateam.herokuapp.com/images/room5.jpg',
      prefecture: '沖縄県',
      city: '伊良部島',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: 'ここにしかない時間が流れる至極のひととき。',
      registration_id: 'M0000006',
      body: "窓の向こうに広がる太平洋。\nそして、よく晴れた日には富士山を望むことができます。
      五感を研ぎ澄ませ、自然と戯れる。\nここモントレーハウスには、ホテルや旅館で味わえない特別な時間が流れています。",
      image_url: 'https://ateamateam.herokuapp.com/images/room6.JPG',
      prefecture: '千葉県',
      city: '館山',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: '逗子駅より徒歩10分！絶景オーシャンビューの逗子の高級別荘',
      registration_id: 'M0000007',
      body: "2018年3月OPEN！\n逗子駅より徒歩10分という好立地に高級別荘が誕生いたしました。\n目の前には湘南の海が広がっており、ビーチへ降り立つことができます。\n豪華別荘で最高の休日をお過ごしください。",
      image_url: 'https://ateamateam.herokuapp.com/images/room7.jpg',
      prefecture: '神奈川県',
      city: '逗子',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: '光と水の邸宅',
      registration_id: 'M0000008',
      body: "古都鎌倉の一軒家で暮らすように滞在出来る。鎌倉の名所が徒歩圏内に目白押し。\n泊まるからこそ、見つかる新しい古都の魅力。\nBOSEの音響設備・大画面テレビで迫力ある音と映像を堪能。\n「Kanagawa Brand Collection 2017」に唯一掲載された貸別荘。",
      image_url: 'https://ateamateam.herokuapp.com/images/room8.jpg',
      prefecture: '神奈川県',
      city: '鎌倉',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: '羊蹄山を望む6LDKのラグジュアリーな豪邸を一棟貸切',
      registration_id: 'M0000009',
      body: "6つの寝室と複数の空間から成り立つ礎石は、大規模なグループや多人数のご家族での利用に最適な高級別荘です。 2018年に完成し、日本建築の美とモダンなイタリア家具を同時にお楽しみいただけます。リビングダイニングからは壮大な羊蹄山の景色をご覧いただけます。",
      image_url: 'https://ateamateam.herokuapp.com/images/room9.jpg',
      prefecture: '北海道',
      city: 'ニセコ',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: '北海道の美しい景色を堪能する',
      registration_id: 'M0000010',
      body: "NEST AT THE TREESはニセコマウンテンリゾート グラン・ヒラフとニセコ・ビレッジから車で8分の場所に位置し、半月湖畔自然公園とニセコアンヌプリ国際スキー場まで車で15分以内です。\nホテルには大浴場があり、北海道の美しい景色を望めます。\n館内のスキー用具置き場を利用することができ、館内レストランではビュッフェ式朝食を用意しています。\n夏季にはゴルフやラフティング、冬季にはスキーやスノーシューイングなどのアクティビティを楽しめます。\n新千歳空港まで80kmと、アクセス至便の環境です。",
      image_url: 'https://ateamateam.herokuapp.com/images/room10.jpg',
      prefecture: '北海道',
      city: 'ニセコ',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: '源泉掛け流し温泉付きの日本百景を望む一棟貸切宿',
      registration_id: 'M0000011',
      body: "都会の喧騒から離れるのに、仙台からはそう遠くないこの地で自分達だけの時間を過ごす。\n\n移ろう四季の中、訪れた季節を感じると、違う季節、、、いや、全ての季節をこの静寂の地で過ごしてみたくなるはず。大地に抱かれた滔々と流れる良質温泉に浸かれば、湯の音、自然の音、そして本来音を発さない月や星達のきらめく音までもが届いてきそうなほど。それほどまでに静かなこの地は本来の人間という動物を、感性豊かなものへと戻してくれる。\n\nご利用を重ねるごとに、その日にしか味わえない、体感できない滞在となるはずです。\nどうか大切な時間を大切な人と青根温泉　一棟温泉宿　星月でお過ごしくださいませ。",
      image_url: 'https://ateamateam.herokuapp.com/images/room11.jpg',
      prefecture: '宮城県',
      city: '青根温泉',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: '世界遺産のまち平泉町　ゆるやかな時の流れを感じる日本家屋の宿',
      registration_id: 'M0000012',
      body: "「平泉倶楽部～FARM&RESORT〜」は、岩手県平泉町にある1日1組様限定の一棟貸しの宿泊施設です。築150年の日本家屋を趣を残しながらも快適に過ごせるようリノベーションいたしました。\n平泉町の束稲山(たばしねやま)のふもとに広がる美しい田園風景と　緩やかな時間の移ろいのなかで心静まるひとときをお楽しみください。",
      image_url: 'https://ateamateam.herokuapp.com/images/room12.jpg',
      prefecture: '岩手県',
      city: '平泉',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: 'とびきりの宿でとびきりの時間を',
      registration_id: 'M0000013',
      body: "仙台駅から車で約50分。蔵王連峰を望む別荘地「蔵王山水苑」の敷地内にあり、万全の管理体制です。建築デザイナーHOMANN氏のデザインによって生まれ変わった森の中の一軒家は、川のせせらぎを聴きながら癒やしの時間を過ごすのに最適な空間となっております。\n別荘管理地内には、テニスコートや貸切露天風呂があり、夏にはプールもオープンします。",
      image_url: 'https://ateamateam.herokuapp.com/images/room13.jpg',
      prefecture: '宮城県',
      city: '蔵王町遠刈田温泉',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: 'キッチン付きのコンドミニアム',
      registration_id: 'M0000014',
      body: "「赤ちゃん・小さいお子様連れファミリーでも快適に東京滞在を楽しめる宿泊施設」をめざし、このコンドミニアムホテルは誕生しました！欅（けやき）の木の温もり溢れるお宿で、ほっと一息つけるひとときをお過ごし下さい。",
      image_url: 'https://ateamateam.herokuapp.com/images/room14.jpg',
      prefecture: '東京都',
      city: '日本橋',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    },
    {
      host_id: host_id,
      title: '洗練された北欧デザインの一棟貸しヴィラ',
      registration_id: 'M0000015',
      body: "まるでお気に入りのカフェのような、北欧デザインのヴィラをご用意しました。\nひるがの高原はアウトドアアクティビティが充実しています。\n夏はツリークライミングや森林散策、テラスでバーベキュー、冬はスキーや温泉など\n思い思いの休日をお過ごしください。",
      image_url: 'https://ateamateam.herokuapp.com/images/room14.jpg',
      prefecture: '岐阜県',
      city: 'ひるがの高原',
      latitude: 35.239728,
      longitude: 139.049642,
      max_stay_num: rand(2..5).to_i,
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
      access: accesses.sample,
      price: rand(30000..50000).round(-2),
    }
  ]
)

Room.all.each do |room|
  (Date.new(2018, 10, 1)..Date.today).each do |d|
    room.reserved_dates.create(reserved_date: d)
  end

  Option.all.sample(8).each do |option|
    RoomOption.create(room_id: room.id, option_id: option.id)
  end

  review_bodys = [
    "施設やホテルの中も素晴らしいのはもちろんなのですが、ご担当の方がとても親切で、素敵なおもてなしをして頂きました。幸せな誕生日になりました。本当にありがとうございます。",
    "心のお洗濯ができました！\n子どもたちもプライベートプールで、朝から夜まで思う存分遊べました！！\n星空も素敵でした。本当に素敵なロケーションです！！！\nまた利用させてもらいたいです。",
    "まさにテラスハウス。\n最高の旅行になりました。",
    "７月の３連休に友人グループで利用させていただき、とても素敵な休日を過ごすことができました。
    目の前が海のロケーションと、モダンでおしゃれなデザイナーズハウスにテンションがあがり、特に全面ガラス張りのリビングルームは、インテリアも上品で写真以上の解放感とラグジュアリー感でした。テラスでは夕日を見ながらBBQをしたり、別荘を最大限に満喫しました。ビーチへの移動も簡単で、夏のレジャーには最適です！",
    "5月22日から、主人と1泊で利用しました。初めてのバケーションレンタルでしたが、本当に最高でした。海が目の前に広がり癒されました。飲み物等も、充実しており主人は、殆ど飲んでしまいました。申し訳ありません。対応して下さった方も、本当にいい方で最初から最後までいい旅行ができました。また、利用したいです。その際はまたよろしくお願いします。"
  ]

  5.times do |i|
    room.room_reviews.create(
      satisfaction: rand(3..5),
      cleanliness: rand(3..5),
      cost_performance: rand(3..5),
      amenity: rand(3..5),
      location: rand(3..5),
      access: rand(3..5),
      body: review_bodys[i]
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
