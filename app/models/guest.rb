# frozen_string_literal: true
# == Schema Information
#
# Table name: guests
#
#  id                     :bigint(8)        not null, primary key
#  provider               :string           default("email"), not null
#  uid                    :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  allow_password_change  :boolean          default(FALSE)
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  name                   :string
#  nickname               :string
#  image                  :string
#  email                  :string
#  tokens                 :json
#  gender                 :string
#  birthday               :date
#  city                   :string
#  country                :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Guest < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  # 関連
  has_many :reserves
  has_many :rooms, through: :reserves

  # アクセサ

  # バリデーション

  # スコープ

  # クラスメソッド
end
