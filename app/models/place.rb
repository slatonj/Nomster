class Place < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :photos
    
    geocoded_by :address
    after_validation :geocode


    validates :name, presence: true, length:{ minimum: 5, maximum: 100} 
    validates :address, presence: true, length:{ minimum: 10, maximum: 100}
    validates :description, presence: true, length:{ minimum: 5, maximum: 500}
end
