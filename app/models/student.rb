class Student < ApplicationRecord
    has_one_attached :image
    validates :school_email, presence: true, uniqueness: true
end
