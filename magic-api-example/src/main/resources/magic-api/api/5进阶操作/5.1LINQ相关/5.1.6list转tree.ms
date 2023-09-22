{
  "properties" : { },
  "id" : "d6858902837a4b63b4bc9a2292dc8ee5",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "5.1.6list转tree",
  "createTime" : null,
  "updateTime" : 1679918720136,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/tree",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================

var toTree = (list,parentId) => select t.*,toTree(list,t.id) children from list t where t.parent_id = parentId

// 根节点为 0
return toTree(db.select('select id,group_name,parent_id from magic_group'),'0')