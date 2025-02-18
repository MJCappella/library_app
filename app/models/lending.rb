class Lending < ApplicationRecord
  belongs_to :book

  validates :borrower_name, presence: true
  validates :borrowed_at, presence: true
  validate :returned_at_after_borrowed_at

  private

  def returned_at_after_borrowed_at
    return if returned_at.blank? || borrowed_at.blank?

    if returned_at < borrowed_at
      errors.add(:returned_at, "must be after borrowed_at")
    end
  end
end