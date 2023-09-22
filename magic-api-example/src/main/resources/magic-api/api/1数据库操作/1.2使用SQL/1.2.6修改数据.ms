{
  "properties" : { },
  "id" : "74bb36fced4c474b8ea000ee9de978be",
  "script" : null,
  "groupId" : "ad31382a59c14517aa736c91dbdde8b0",
  "name" : "1.2.6修改数据",
  "createTime" : null,
  "updateTime" : 1680050484810,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/update",
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
const id = '1'
return db.update("""
    update magic_api_info set api_name = '666' where id = #{id}
""")