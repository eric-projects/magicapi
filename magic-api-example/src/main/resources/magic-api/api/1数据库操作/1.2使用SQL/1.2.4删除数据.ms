{
  "properties" : { },
  "id" : "f74311312a9642a49e4702c988948756",
  "script" : null,
  "groupId" : "ad31382a59c14517aa736c91dbdde8b0",
  "name" : "1.2.4删除数据",
  "createTime" : 1680050366238,
  "updateTime" : null,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/delete",
  "method" : "DELETE",
  "parameters" : [ {
    "name" : "id",
    "value" : "1",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
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
return db.update("""delete from magic_api_info where id = #{id} """)