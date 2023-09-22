{
  "properties" : { },
  "id" : "415c860dbe3b4d5c9ddaec006ed3c79a",
  "script" : null,
  "groupId" : "8350c5f638d9400fa9c44f46412bba31",
  "name" : "1.1.5新增或修改",
  "createTime" : null,
  "updateTime" : 1679917051997,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/save",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": 1,\n    \"timestamp\": 1679878780855,\n    \"executeTime\": 11\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
// 相关API：https://www.ssssssss.org/magic-api/pages/module/db/#%E5%8D%95%E8%A1%A8%E6%93%8D%E4%BD%9Capi
return db.table('magic_api_info')
    .primary('id', () => uuid())
    .save({
        // 当id有值时是修改，否则是新增,新增时使用uuid作为主键
        // id: 'c7076376afcb47cf80087f6c85a30296',   
        api_name: '123'
    })