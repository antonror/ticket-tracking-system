require 'rails_helper'

RSpec.describe Supplier, type: :model do
  it { should have_many(:tickets) }
end
