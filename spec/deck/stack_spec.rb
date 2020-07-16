require 'deck/stack'


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

    it 'can instanciate a single stack containing cards' do
      json = <<__JSON__
        { "title":"TODO"
        , "boardId":1
        , "deletedAt":0
        , "lastModified":1592677150
        , "cards":[{"title":"do something","description":"we really should be doing this thing","stackId":2,"type":"plain","lastModified":1592676092,"lastEditor":null,"createdAt":1592676092,"labels":[],"assignedUsers":[],"attachments":null,"attachmentCount":0,"owner":{"primaryKey":"pamplemousse","uid":"pamplemousse","displayname":"pamplemousse","type":0},"order":999,"archived":false,"duedate":null,"deletedAt":0,"commentsUnread":0,"id":22,"overdue":0}]
        , "order":999
        , "id":2
        }
__JSON__

      stack = Stack.from_json json

      expect(stack.cards.size).to eq 1
      expect(stack.cards[0].title).to eq 'do something'
      expect(stack.cards[0].description).to eq 'we really should be doing this thing'
    end
  end
end
