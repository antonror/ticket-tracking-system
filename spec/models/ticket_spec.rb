require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it { should belong_to(:supplier) }
  it { should belong_to(:location) }
  it { should belong_to(:event) }

  # Location
  let(:indoors)         { FactoryBot.create(:location, :indoors) }

  # Supplier
  let(:international)   { FactoryBot.create(:supplier, :international) }

  # Event
  let(:recorded_indoor) { FactoryBot.create(:event, :recorded_indoor) }

  describe 'AR associations' do
    context 'with valid data' do
      let(:ticket) { FactoryBot.create(:ticket, supplier: international, location: indoors, event: recorded_indoor) }

      it 'should add new instances' do
        expect(ticket).to be_valid
      end

      it 'should reach Event' do
        expect(ticket.event).to be_a(Event)
      end
    end
  end
end
