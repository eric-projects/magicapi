{
  "properties" : { },
  "id" : "519573c20541450e8721d529df0a4ea0",
  "script" : null,
  "groupId" : "8350c5f638d9400fa9c44f46412bba31",
  "name" : "1.1.4删除数据",
  "createTime" : null,
  "updateTime" : 1679917049804,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/delete",
  "method" : "DELETE",
  "parameters" : [ {
    "name" : "id",
    "value" : "123",
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
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": 0,\n    \"timestamp\": 1679878651956,\n    \"executeTime\": 4\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
// 相关API：https://www.ssssssss.org/magic-api/pages/module/db/#%E5%8D%95%E8%A1%A8%E6%93%8D%E4%BD%9Capi
return db.table('magic_api_info')
        .where()
        .eq('id', id)
        .delete();