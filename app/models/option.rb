# == Schema Information
#
# Table name: options
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Option < ApplicationRecord
  # 関連
  has_many :rooms, through: :room_options
  has_many :room_options

  # アクセサ

  # バリデーション

  # スコープ

  # クラスメソッド
end
