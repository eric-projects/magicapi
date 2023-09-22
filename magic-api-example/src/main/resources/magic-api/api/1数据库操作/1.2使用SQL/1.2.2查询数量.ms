{
  "properties" : { },
  "id" : "9332a2b638d74750a9f7a140ecd71e84",
  "script" : null,
  "groupId" : "ad31382a59c14517aa736c91dbdde8b0",
  "name" : "1.2.2查询数量",
  "createTime" : null,
  "updateTime" : 1679878994552,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/count",
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
return db.selectInt('select count(*) from magic_api_info')