{
  "properties" : { },
  "id" : "8b2fc85a00074aa0ac0b7b781f790d91",
  "script" : null,
  "groupId" : "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name" : "2.4response模块",
  "createTime" : null,
  "updateTime" : 1679917517497,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/response",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"ok\": true\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
import response;
// 相关文档： https://www.ssssssss.org/magic-api/pages/module/response/
// 构建Json结果，结果不会经过框架包装处理。
return response.json({
    ok: true
})
//直接返回该text，不会被包装处理
// return response.text('ok');