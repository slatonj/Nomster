class Place < ApplicationRecord
    belongs_to :user
    has_many :comments
    
    geocoded_by :address
    after_validation :geocode


    validates :name, presence: true, length:{ minimum: 5, maximum: 50} 
    validates :address, presence: true, length:{ minimum: 10, maximum: 45}
    validates :description, presence: true, length:{ minimum: 5, maximum: 200}
end
