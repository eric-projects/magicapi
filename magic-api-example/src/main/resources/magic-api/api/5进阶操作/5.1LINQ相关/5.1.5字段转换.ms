{
  "properties" : { },
  "id" : "4710d409607a4b2aba00b028e8d36dad",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "5.1.5字段转换",
  "createTime" : null,
  "updateTime" : 1679918715200,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/map",
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
var list = [{
    sex : 0,
    name : '小明',
    age : 19
},{
    sex : 1,
    name : '小花',
    age : 18
}];
return 
    select 
        t.age > 18 ? '成人' : '未成年' age,
        t.sex == 0 ? '男' : '女' sex,
        t.name
    from list t;