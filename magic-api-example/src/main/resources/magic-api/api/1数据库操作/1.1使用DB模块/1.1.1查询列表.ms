{
  "properties" : { },
  "id" : "0d4c0aa7f7b44072a820c88cb932662f",
  "script" : null,
  "groupId" : "8350c5f638d9400fa9c44f46412bba31",
  "name" : "1.1.1查询列表",
  "createTime" : null,
  "updateTime" : 1680656114378,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/list",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ {
    "name" : "default_data_source",
    "value" : "",
    "description" : "配置默认数据源的key",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
// 相关API：https://www.ssssssss.org/magic-api/pages/module/db/#%E5%8D%95%E8%A1%A8%E6%93%8D%E4%BD%9Capi
return db.table('magic_api_info')
        .column('api_name') // 只查询api_name列
        .select()