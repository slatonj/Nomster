class Photo < ApplicationRecord
    belongs_to :place
    belongs_to :user

    validates :picture, :presence => true

    mount_uploader :picture, PictureUploader    

end
