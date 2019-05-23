require 'rails_helper'

# Test suite for the Todo model
RSpec.describe User, type: :model do
  # Association test
  # ensure User model has a 1:m relationship with the UserInOut model
  it { should have_many(:user_in_out) }
  # Validation tests
  # ensure columns are present before saving
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:admin) }
end
