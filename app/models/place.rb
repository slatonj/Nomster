class Place < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length:{ minimum: 5, maximum: 30} 
    validates :address, presence: true, length:{ minimum: 10, maximum: 45}
    validates :description, presence: true, length:{ minimum: 5, maximum: 200}
end
