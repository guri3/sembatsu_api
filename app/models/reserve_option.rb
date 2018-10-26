# == Schema Information
#
# Table name: reserve_options
#
#  id         :bigint(8)        not null, primary key
#  reserve_id :bigint(8)
#  option_id  :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ReserveOption < ApplicationRecord
  # 関連
  belongs_to :reserve

  # アクセサ

  # バリデーション

  # スコープ

  # クラスメソッド
end
