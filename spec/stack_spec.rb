require 'stack'


describe 'Stack' do
  describe 'deserialization from json' do
    it 'can instanciate a list of stacks' do
      json = <<__JSON__
        [ { "title":"TODO"
          , "boardId":1
          , "deletedAt":0
          , "lastModified":1592677150
          , "cards": []
          , "order":999
          , "id":2
          }
        ]
__JSON__

      stacks = Stack.from_json json

      expect(stacks.size).to eq 1
      expect(stacks[0].id).to eq 2
      expect(stacks[0].title).to eq 'TODO'
      expect(stacks[0].cards).to eq []
    end

    it 'can instanciate a single stack' do
      json = <<__JSON__
        { "title":"TODO"
        , "boardId":1
        , "deletedAt":0
        , "lastModified":1592677150
        , "cards": []
        , "order":999
        , "id":2
        }
__JSON__

      stack = Stack.from_json json

      expect(stack.id).to eq 2
      expect(stack.title).to eq 'TODO'
      expect(stack.cards).to eq []
    end
  end
end
