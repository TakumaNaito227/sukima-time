class Message < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :city

  belongs_to :user

  validates :title, :year, :month, :day, :start, :end, :money, :user_id, :city_id, presence: true
end
