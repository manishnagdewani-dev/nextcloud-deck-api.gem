# frozen_string_literal: true

LIST_OF_BOARDS_JSON = <<__JSON__
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

SINGLE_BOARD_JSON = <<__JSON__
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

BOARD_WITH_STACKS_WITH_CARDS_JSON = <<__JSON__
    { "title":"API test"
    , "owner":{"primaryKey":"pamplemousse","uid":"pamplemousse","displayname":"pamplemousse","type":0}
    , "color":"728466"
    , "archived":false
    , "labels":[]
    , "acl":[{"participant":{"primaryKey":"API","uid":"API","displayname":"API","type":0},"type":0,"boardId":1,"permissionEdit":true,"permissionShare":false,"permissionManage":false,"owner":false,"id":2}]
    , "permissions":{"PERMISSION_READ":true,"PERMISSION_EDIT":true,"PERMISSION_MANAGE":false,"PERMISSION_SHARE":false}
    , "users":[]
    , "shared":1
    , "stacks":[{ "title":"TODO"
               , "boardId":1
               , "deletedAt":0
               , "lastModified":1592677150
               , "cards":[{"title":"do something","description":"we really should be doing this thing","stackId":2,"type":"plain","lastModified":1592676092,"lastEditor":null,"createdAt":1592676092,"labels":[],"assignedUsers":[],"attachments":null,"attachmentCount":0,"owner":{"primaryKey":"pamplemousse","uid":"pamplemousse","displayname":"pamplemousse","type":0},"order":999,"archived":false,"duedate":null,"deletedAt":0,"commentsUnread":0,"id":22,"overdue":0}]
               , "order":999
               , "id":2
               }
               ]
    , "deletedAt":0
    , "lastModified":1592677150
    , "id":1
    }
__JSON__
