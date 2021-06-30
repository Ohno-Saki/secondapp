class Room < ApplicationRecord
  belongs_to:user, optional: true
  has_many:reservations

  mount_uploader :room_image, RoomimageUploader
end
