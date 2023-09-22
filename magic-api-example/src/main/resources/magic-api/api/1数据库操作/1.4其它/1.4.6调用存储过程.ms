{
  "properties" : { },
  "id" : "f944a6da12804861a3f89ba3ffca561b",
  "script" : null,
  "groupId" : "b84bbe97a3d54de69e5a305d75048c4f",
  "name" : "1.4.6调用存储过程",
  "createTime" : null,
  "updateTime" : 1679882205421,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/call",
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
// 由于magic-api本身没有去支持存储过程，目前仅能调用无出参的存储过程
return db.update("""
    call produce_name(#{param1}, #{param2}, .....)
""")