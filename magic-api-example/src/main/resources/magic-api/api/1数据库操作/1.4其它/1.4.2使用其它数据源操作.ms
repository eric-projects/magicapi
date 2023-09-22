{
  "properties" : { },
  "id" : "d20f236bbdcb4313bf36dcf15a870173",
  "script" : null,
  "groupId" : "b84bbe97a3d54de69e5a305d75048c4f",
  "name" : "1.4.2使用其它数据源操作",
  "createTime" : null,
  "updateTime" : 1679879377471,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/switch",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [{\n        \"1\": 1\n    }],\n    \"timestamp\": 1679877851363,\n    \"executeTime\": 360\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
// 使用key为slave的数据源进行查询，其它操作同理
return db.slave.select("select 1")