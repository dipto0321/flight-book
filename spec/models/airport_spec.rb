# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Airport, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:code) }
  end

  describe 'Accosiations' do
    it { should have_many(:departing_flights).with_foreign_key('departure_airport_id').class_name('Flight') }

    it { should have_many(:ariving_flights).with_foreign_key('arival_airport_id').class_name('Flight') }
  end
end
