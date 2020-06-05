class Message < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :cities

  belongs_to :users

  validates :nickname, :title, :year, :month, :day, :start, :end, :money, :text, :user_id, :city_id, presence: true
end
