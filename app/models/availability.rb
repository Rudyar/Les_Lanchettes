class Availability < ApplicationRecord
  validates_presence_of :date, :available
  validates :price,
            presence: true,
            numericality: { greater_than_or_equal_to: 1 }

  belongs_to :period
end
