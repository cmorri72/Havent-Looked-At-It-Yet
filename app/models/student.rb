class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_one_attached :image
    

    VALID_MAJORS = ["Computer Engineering BS", "Computer Information Systems BS",
    "Computer Science BS", "Cybersecurity Major", "Data Science and Machine Learning Major"]

    validates :major, inclusion: { in: VALID_MAJORS, message: "%{value} is not a valid major" }

    validate :email_format
    def email_format
        unless email =~ /\A[\w+\-.]+@msudenver\.edu\z/i
            errors.add(:email, "must be an @msudenver.edu email address")
        end
    end
 

end
