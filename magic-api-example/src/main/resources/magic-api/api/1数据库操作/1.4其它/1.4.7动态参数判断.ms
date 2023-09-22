{
  "properties" : { },
  "id" : "affaed31406c477790ded329f844a620",
  "script" : null,
  "groupId" : "b84bbe97a3d54de69e5a305d75048c4f",
  "name" : "1.4.7动态参数判断",
  "createTime" : null,
  "updateTime" : 1679917007004,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/params",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"ok\",\n    \"timestamp\": 1615818676485,\n    \"executeTime\": 99\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
var ids = ['1','2','3'];

//具体执行的SQL请看打印的运行日志信息。

db.select('select * from magic_api_info where id in (#{ids})')  //对参数自动展开

//var id = '123';
db.select("select * from magic_api_info where id = #{id} ")  //#{} 是占位符，${} 是拼接字符串


//var name = '123';
db.select("select * from magic_api_info where id = '123' ?{name,and api_name = #{name}}")  //if 判断

return 'ok';