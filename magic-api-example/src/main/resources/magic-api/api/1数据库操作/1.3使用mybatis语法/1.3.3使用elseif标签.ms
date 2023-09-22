{
  "properties" : { },
  "id" : "c82da61db36640ed960c1ee32a9d04d0",
  "script" : null,
  "groupId" : "8505cc65c46145bdb3e20a0ff5d14699",
  "name" : "1.3.3使用elseif标签",
  "createTime" : null,
  "updateTime" : 1679917095684,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/elseif",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": null,\n    \"timestamp\": 1679881548436,\n    \"executeTime\": 11\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
// 文档： https://www.ssssssss.org/magic-api/pages/quick/crud/#mybatis%E8%AF%AD%E6%B3%95%E6%94%AF%E6%8C%81
const val = 1
return db.select("""
    select api_name from magic_api_info
    where 
    <if test="val == 2">
        api_name is not null
    </if>
    <elseif test="val == 1">
        api_name = '测试'
    </elseif>
    <else>
        api_name is null
    </else>
""")