require 'rails_helper'

RSpec.describe Event, type: :model do
  it { should have_many(:tickets) }
  it { should have_and_belong_to_many(:performers) }
  it { should belong_to(:location) }

  # Location
  let(:indoors)        { FactoryBot.create(:location, :indoors) }

  # Performers
  let(:live)            { FactoryBot.create_list(:performer, 2, :live) }

  # Supplier
  let(:national)        { FactoryBot.create(:supplier, :national) }


  describe 'AR associations' do
    context 'with valid data' do
      let(:event)       { described_class.create(location: indoors, performers: live) }

      it 'should reach Performers' do
        expect(event.performers).to include(Performer)
      end

      it 'should reach Locations' do
        expect(event.location).to be_a(Location)
      end
    end
  end
end
