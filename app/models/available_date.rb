# == Schema Information
#
# Table name: available_dates
#
#  id             :bigint(8)        not null, primary key
#  room_id        :bigint(8)
#  available_date :date             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class AvailableDate < ApplicationRecord
  # 関連
  belongs_to :room

  # アクセサ

  # バリデーション

  # スコープ

  # クラスメソッド
end
