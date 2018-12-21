require 'rails_helper'

RSpec.describe Passenger, type: :model do
  describe 'associations' do
    it { should belong_to(:booking) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end
end
