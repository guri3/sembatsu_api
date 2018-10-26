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
#  max_stay_num    :integer          not null
#  check_in_time   :string           not null
#  check_out_time  :string           not null
#  bed_room_num    :integer          not null
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
  has_many :reserved_dates
  has_many :reserves
  has_many :guests, through: :reserves
  has_many :room_options
  has_many :options, through: :room_options
  has_many :room_reviews

  # アクセサ

  # バリデーション

  # スコープ

  # クラスメソッド

  # メソッド
end
