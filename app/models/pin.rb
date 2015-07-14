class Pin < ActiveRecord::Base
	belongs_to :user
	
	has_attached_file :image, :styles => { large: "600x600", medium: "300x300", thumb: "100x100" }
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
