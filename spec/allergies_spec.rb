require 'rspec'
require 'allergies'

describe 'Allergies' do
  let(:user) { Allergies.new(3)}
  let(:user2) { Allergies.new(180)}

  describe '#initialize' do
    it 'has a readable score' do
      expect(user.score).to eq 3
    end

    it 'has an empty readable allergic_to list' do
      expect(user.allergic_to).to eq []
    end
  end

  describe '#allergy_finder' do
    it 'will populate #allergic_to with allergians' do
      expect{ user.allergy_finder }.to change{ user.allergic_to }.from([]).to(["peanuts", "eggs"])
    end

    it 'will populate #allergic_to with allergians' do
      expect{ user2.allergy_finder }.to change{ user2.allergic_to }.from([]).to(["cats", "chocolate", "tomatoes", "shellfish"])
    end
  end


end
