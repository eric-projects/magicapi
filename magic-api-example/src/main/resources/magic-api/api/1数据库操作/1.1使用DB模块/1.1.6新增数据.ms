{
  "properties" : { },
  "id" : "eaa562c74ca6427bbea6a076db4dba61",
  "script" : null,
  "groupId" : "8350c5f638d9400fa9c44f46412bba31",
  "name" : "1.1.6新增数据",
  "createTime" : null,
  "updateTime" : 1679917054683,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/insert",
  "method" : "POST",
  "parameters" : [ {
    "name" : "loginName",
    "value" : "admin",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "password",
    "value" : null,
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": null,\n    \"timestamp\": 1679878438039,\n    \"executeTime\": 43\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
// 相关API：https://www.ssssssss.org/magic-api/pages/module/db/#%E5%8D%95%E8%A1%A8%E6%93%8D%E4%BD%9Capi
return db.table('sys_user').primary('id').insert({
    login_Name: loginName,
    password: password
})