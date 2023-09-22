{
  "properties" : { },
  "id" : "f0ee5da0f4914213953e6340c1d1811d",
  "script" : null,
  "groupId" : "8b4ffb920a6e4758ae142ccda0685519",
  "name" : "5.1.2关联",
  "createTime" : null,
  "updateTime" : 1679918703394,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/join",
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
return 
    select 
        t.*,
        g.groupName
    from db.camel().select('select api_name,api_group_id from magic_api_info') t
    left join db.camel().select('select id,group_name from magic_group') g on t.apiGroupId = g.id