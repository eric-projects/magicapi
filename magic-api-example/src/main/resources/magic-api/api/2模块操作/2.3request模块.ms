{
  "properties" : { },
  "id" : "c66c81b8848842edb8fe236fe38a6953",
  "script" : null,
  "groupId" : "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name" : "2.3request模块",
  "createTime" : null,
  "updateTime" : 1679917480183,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/request",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [\"127.0.0.1:9999\"],\n    \"timestamp\": 1679917408463,\n    \"executeTime\": 2\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
import request;
// 相关文档： https://www.ssssssss.org/magic-api/pages/module/request/
// 获取请求的header数组
return request.getHeaders("Host")