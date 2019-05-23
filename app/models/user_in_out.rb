class UserInOut < ApplicationRecord
  # associations
  belongs_to :user

  # validations
  validates_presence_of :user_in, :user_out
end
