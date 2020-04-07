class Notice < ApplicationRecord
    belongs_to :chart

    validates: content, presence: true
    # validates :content, length: { minimum: 20 }
    validates: votes, numericality: true
end
