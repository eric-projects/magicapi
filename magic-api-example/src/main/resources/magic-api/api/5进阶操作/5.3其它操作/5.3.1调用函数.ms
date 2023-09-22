{
  "properties" : { },
  "id" : "5a47cfbd857f47b196681e66d3aaa18f",
  "script" : null,
  "groupId" : "1ee3e804ddc145d3892cb0eb0c409302",
  "name" : "5.3.1调用函数",
  "createTime" : null,
  "updateTime" : 1679918853881,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/function",
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
import '@/test/add' as add;
import '@/test/nested' as nested;
return {
    'add': add(1,2),
    'nested': nested()
}