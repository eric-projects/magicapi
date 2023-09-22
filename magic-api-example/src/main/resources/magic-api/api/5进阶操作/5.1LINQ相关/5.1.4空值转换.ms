{
  "properties" : { },
  "id" : "626d38774a4c48d0b2bc96f59df087b2",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "5.1.4空值转换",
  "createTime" : null,
  "updateTime" : 1679918710209,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/null",
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
var list = [
    {name : null,age: 18},
    {name : '小明'}
]
// || ifnull 都可以做空值转换，区别是 || 会将空字符串、0、空集合、空Map视为空值
return 
    select 
        t.name || '无名' name,
        ifnull(t.age,20) age
    from list t