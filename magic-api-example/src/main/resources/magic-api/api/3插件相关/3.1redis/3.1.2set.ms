{
  "properties" : { },
  "id" : "a55cba2eb8be4f41bb81dcc9abdbeb0d",
  "script" : null,
  "groupId" : "399ff54c79b646efaf035b245aa7d8a3",
  "name" : "3.1.2set",
  "createTime" : null,
  "updateTime" : 1679917776881,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/set",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"OK\",\n    \"timestamp\": 1679917725803,\n    \"executeTime\": 17\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
import redis;
// 文档：https://www.ssssssss.org/magic-api/pages/plugin/redis/
return redis.setex('magic-api:test', 60, 'hello magic-api!')