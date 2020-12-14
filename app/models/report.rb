class Report < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :title, :description, :date, :active, :purpose, :organizer, :location, presence: true

  belongs_to :user

  has_one_attached :picture
end
