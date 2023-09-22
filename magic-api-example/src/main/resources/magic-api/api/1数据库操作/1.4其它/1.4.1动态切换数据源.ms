{
  "properties" : { },
  "id" : "1b4c39a5e42a44f5b8b95a925a992959",
  "script" : null,
  "groupId" : "b84bbe97a3d54de69e5a305d75048c4f",
  "name" : "1.4.1动态切换数据源",
  "createTime" : null,
  "updateTime" : 1679879372263,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/dynamic",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [{\n        \"1\": 1\n    }],\n    \"timestamp\": 1679877933108,\n    \"executeTime\": 8\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
// 使用key为slave的数据源进行查询，其它操作同理
const dbKey = 'slave';
return db[dbKey].select('select 1')