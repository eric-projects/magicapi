{
  "properties" : { },
  "id" : "d320ecbe3e7c4815bea747456199dd88",
  "script" : null,
  "groupId" : "ad31382a59c14517aa736c91dbdde8b0",
  "name" : "1.2.5新增数据",
  "createTime" : null,
  "updateTime" : 1680050427324,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/insert",
  "method" : "POST",
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
return db.insert("""insert into sys_user(user_name, password) values (#{userName}, #{password})""", 'id')