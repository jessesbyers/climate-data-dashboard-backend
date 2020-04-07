class Chart < ApplicationRecord
    has_many :notices
    has_many :wonders
    
    validates :name, presence: true
    validates :data_url, presence: true
end
