require 'board'


describe 'Board' do
  describe 'deserialization from json' do
    it 'can instanciate a list of boards' do
      json = <<__JSON__
        [ { "title":"API test"
          , "owner":{"primaryKey":"pamplemousse","uid":"pamplemousse","displayname":"pamplemousse","type":0}
          , "color":"728466"
          , "archived":false
          , "labels":[]
          , "acl":[{"participant":{"primaryKey":"API","uid":"API","displayname":"API","type":0},"type":0,"boardId":1,"permissionEdit":true,"permissionShare":false,"permissionManage":false,"owner":false,"id":2}]
          , "permissions":{"PERMISSION_READ":true,"PERMISSION_EDIT":true,"PERMISSION_MANAGE":false,"PERMISSION_SHARE":false}
          , "users":[]
          , "shared":1
          , "stacks":[]
          , "deletedAt":0
          , "lastModified":1592677150
          , "id":1
          }
        ]
__JSON__

      boards = Board.from_json json

      expect(boards.size).to eq 1
      expect(boards[0].id).to eq 1
      expect(boards[0].title).to eq 'API test'
      expect(boards[0].stacks).to eq []
    end

    it 'can instanciate a single board' do
      json = <<__JSON__
        { "title":"API test"
        , "owner":{"primaryKey":"pamplemousse","uid":"pamplemousse","displayname":"pamplemousse","type":0}
        , "color":"728466"
        , "archived":false
        , "labels":[]
        , "acl":[{"participant":{"primaryKey":"API","uid":"API","displayname":"API","type":0},"type":0,"boardId":1,"permissionEdit":true,"permissionShare":false,"permissionManage":false,"owner":false,"id":2}]
        , "permissions":{"PERMISSION_READ":true,"PERMISSION_EDIT":true,"PERMISSION_MANAGE":false,"PERMISSION_SHARE":false}
        , "users":[]
        , "shared":1
        , "stacks":[]
        , "deletedAt":0
        , "lastModified":1592677150
        , "id":1
        }
__JSON__

      board = Board.from_json json

      expect(board.id).to eq 1
      expect(board.title).to eq 'API test'
      expect(board.stacks).to eq []
    end
  end
end
