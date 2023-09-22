{
  "properties" : { },
  "id" : "464445e784a34f39bdee5338cf063d64",
  "script" : null,
  "groupId" : "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name" : "2.5env模块",
  "createTime" : null,
  "updateTime" : 1679917555714,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/env",
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
import env;
// 相关文档： https://www.ssssssss.org/magic-api/pages/module/env/
// 获取Spring配置项 server.port
return env.get('server.port')