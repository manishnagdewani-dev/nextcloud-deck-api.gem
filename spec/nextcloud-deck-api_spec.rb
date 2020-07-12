require 'nextcloud-deck-api'

describe 'DeckAPI' do
  it 'is polite' do
    message = DeckAPI.hi
    expect(message).to eq "Hello world!"
  end
end
