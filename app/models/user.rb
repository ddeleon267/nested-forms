class User < ApplicationRecord

    validates :username, :email, presence: true











    #validate :email_formatted_correctly

    # def email_formatted_correctly
    #     if self.email && !self.email.include?("@")
    #         errors.add(:email, "must be formatted properly")
    #     end
    # end
end
