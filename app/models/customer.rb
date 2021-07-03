class Customer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :status

  validates :name, :product, :count, presence: true
  validates :status_id, numericality: { other_than: 1 }
end
