require 'rails_helper'

RSpec.describe Location, type: :model do
  it { should have_many(:events) }
  it { should have_many(:tickets) }
end
