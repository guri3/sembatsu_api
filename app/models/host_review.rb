# == Schema Information
#
# Table name: host_reviews
#
#  id         :bigint(8)        not null, primary key
#  host_id    :bigint(8)
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HostReview < ApplicationRecord
  # 関連
  belongs_to :host

  # アクセサ

  # バリデーション

  # スコープ

  # クラスメソッド
end
