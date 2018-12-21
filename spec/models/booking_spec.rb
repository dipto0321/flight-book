require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe 'Associations' do
    it { should belong_to(:flight) }
    it { should have_many(:passengers) }
    it { should accept_nested_attributes_for(:passengers) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:flight_id) }
  end
end
