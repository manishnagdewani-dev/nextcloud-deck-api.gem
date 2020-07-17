# frozen_string_literal: true

LIST_OF_STACKS_JSON = <<__JSON__
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

SINGLE_STACK_JSON = <<__JSON__
    { "title":"TODO"
    , "boardId":1
    , "deletedAt":0
    , "lastModified":1592677150
    , "cards": []
    , "order":999
    , "id":2
    }
__JSON__

STACK_WITH_CARDS_JSON = <<__JSON__
    { "title":"TODO"
    , "boardId":1
    , "deletedAt":0
    , "lastModified":1592677150
    , "cards":[{"title":"do something","description":"we really should be doing this thing","stackId":2,"type":"plain","lastModified":1592676092,"lastEditor":null,"createdAt":1592676092,"labels":[],"assignedUsers":[],"attachments":null,"attachmentCount":0,"owner":{"primaryKey":"pamplemousse","uid":"pamplemousse","displayname":"pamplemousse","type":0},"order":999,"archived":false,"duedate":null,"deletedAt":0,"commentsUnread":0,"id":22,"overdue":0}]
    , "order":999
    , "id":2
    }
__JSON__
