require 'rails_helper'

# Test suite for the UserInOut model
RSpec.describe UserInOut, type: :model do
  # Association test
  # ensure an item record belongs to a single user record
  it { should belong_to(:user) }
  # Validation test
  # ensure columns are present before saving
  it { should validate_presence_of(:user_in) }
  it { should validate_presence_of(:user_out) }
end
