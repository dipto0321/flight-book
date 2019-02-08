require 'rails_helper'

RSpec.describe FlightsController, type: :controller do

  describe "routes" do
    it { should route(:get, '/').to(action: :index) }
  end
  
end
