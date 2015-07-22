class Pin < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :image, :styles => { large: "600x600", medium: "300x300", thumb: "100x100" }
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	validates :image, presence: true
	validates :description, presence: true

	validates :description, length: {
    minimum: 5,
    maximum: 250,
    too_short: "must have at least %{count} characters",
    too_long: "must have at most %{count} characters"
  }
end
