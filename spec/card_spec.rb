require 'card'


describe 'Card' do
  describe 'serialization to json' do
    it 'can serialize a single card' do
      card = Card.new('new task', 'do something specific')

      serialized_card = card.to_json

      json = "{\"title\":\"new task\",\"description\":\"do something specific\"}"

      expect(serialized_card).to eq json
    end
  end
end
