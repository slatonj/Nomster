class Photo < ApplicationRecord
    belongs_to :place

    validates :picture, :presence => true

    mount_uploader :picture, PictureUploader    

end
