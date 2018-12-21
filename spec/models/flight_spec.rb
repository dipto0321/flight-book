require 'rails_helper'

RSpec.describe Flight, type: :model do
  describe 'Associations' do
    it { should belong_to(:departure_airport).class_name('Airport') }

    it { should belong_to(:arival_airport).class_name('Airport') }

    it { should have_many(:bookings) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:departure_airport_id) }
    it { should validate_presence_of(:arival_airport_id) }
    it { should validate_presence_of(:start) }
    it { should validate_presence_of(:duration) }
  end
end
