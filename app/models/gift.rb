class Gift < ActiveRecord::Base
	has_many :gift_occasions
	has_many :occasions, through: :gift_occasions
	# has_and_belongs_to_many
	mount_uploader :picture, GiftPictureUploader
end
