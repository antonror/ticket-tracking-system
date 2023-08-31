require 'rails_helper'

RSpec.describe Performer, type: :model do
  it { should have_and_belong_to_many(:events) }
end
