class Availability < ApplicationRecord
  validates_inclusion_of :available, in: [true, false]
  validates_presence_of :date
  validates :price,
            presence: true,
            numericality: { greater_than_or_equal_to: 1 }

  belongs_to :period
end
