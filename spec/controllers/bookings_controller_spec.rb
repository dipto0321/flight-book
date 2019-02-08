require 'rails_helper'

RSpec.describe BookingsController, type: :controller do

  describe 'routes' do
    it { should route(:get, '/bookings/new').to(action: :new) }
    it { should route(:get, '/bookings/1').to(action: :show, id: 1) }
    it { should route(:get, '/bookings/1/edit').to(action: :edit, id: 1) }
  end

  it { should use_before_action(:booking_find) }
end
