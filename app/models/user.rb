class User < ApplicationRecord
    validates :username, :email, presence: true

    has_many :children
    accepts_nested_attributes_for :children

    # def children_attributes=(attr_hash)
    #     attr_hash.values.each do |child_attributes|
    #         # self.children.build(child_attributes)
    #         child = Child.find_by_name(child_attributes[:name])

    #         if child
    #             child.update(child_attributes)
    #         else
    #             child = Child.new(child_attributes)
    #         end
    #         self.children << child
    #     end
    # end










    #validate :email_formatted_correctly

    # def email_formatted_correctly
    #     if self.email && !self.email.include?("@")
    #         errors.add(:email, "must be formatted properly")
    #     end
    # end
end
