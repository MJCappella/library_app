class Book < ApplicationRecord
  has_many :lendings, dependent: :destroy

  validates :title, presence: true
  validates :author, presence: true
  validates :published_year, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :status, inclusion: { in: %w[available borrowed], message: "%{value} is not a valid status" }
end