{
  "properties" : { },
  "id" : "6edffb94f6d5493ba39f438954b19b89",
  "script" : null,
  "groupId" : "8350c5f638d9400fa9c44f46412bba31",
  "name" : "1.1.7修改数据",
  "createTime" : null,
  "updateTime" : 1679917058456,
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
// 相关API：https://www.ssssssss.org/magic-api/pages/module/db/#%E5%8D%95%E8%A1%A8%E6%93%8D%E4%BD%9Capi
return db.table('magic_api_info').primary('id').update({
    id: '033239e63a2a42b987567a37a2efdd32',
    api_name: '666'
})