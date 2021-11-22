require 'rails_helper'

RSpec.describe Track, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:electrodomestic) }
  it { should validate_presence_of(:day) }
  it { should validate_presence_of(:time_connected) }
  it { should validate_presence_of(:watts) }
end
