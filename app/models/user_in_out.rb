class UserInOut < ApplicationRecord
  # associations
  belongs_to :user

  # validations
  validates_presence_of :user_in, :user_out
  validate :user_out_must_be_greater_than_user_in

  def user_out_must_be_greater_than_user_in
    if user_in >= user_out
      errors.add(:user_in, "user_in can't be greater or equal than user_out")
    end
  end

end
