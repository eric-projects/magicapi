{
  "properties" : { },
  "id" : "06be109b0fdc4df298aaba971b6a2016",
  "script" : null,
  "groupId" : "b84bbe97a3d54de69e5a305d75048c4f",
  "name" : "1.4.4使用缓存",
  "createTime" : null,
  "updateTime" : 1679916977117,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/cache",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [{\n        \"1\": 1\n    }],\n    \"timestamp\": 1679879052822,\n    \"executeTime\": 2\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
// 清空名为user的缓存
// db.deleteCache('user')

// 当执行 update/insert/等修改语句时，会自动清空名为user的缓存
// db.cache('user').update('......')
return db.cache('user',2000)  // 使用缓存名为user的缓存,有效期为2s
    .select('select 1');
    
// db.cache('user',2000).table('sys_user').select()


// 自定义缓存实现：https://www.ssssssss.org/magic-api/pages/senior/cache/