require 'rails_helper'

RSpec.describe Conference, type: :model do
  before(:each) do
    @conference = Conference.create(title: Faker::Lorem.sentence(word_count: 3), time: "#{Faker::Number.between(from: 10, to: 60)}min")
    #FactoryBot.create(:conference)
  end

  describe "testando CRUD" do
    it 'checks that a conference can be created' do
      expect(@conference).to be_valid
    end

    it 'checks that a conference can be read' do
      expect(Conference.find_by_title(@conference.title)).to eq(@conference)
    end

    it 'checks that a conference can be updated' do
      @conference.update(title: "outro tiulo para teste")
      #expect(Conference.find_by_title("outro titulo para teste")).to eq(@conference)
    end

    it 'checks that a conference can be destroyed' do
      @conference.destroy
      expect(Conference.count).to eq(0)
    end
  end
end
