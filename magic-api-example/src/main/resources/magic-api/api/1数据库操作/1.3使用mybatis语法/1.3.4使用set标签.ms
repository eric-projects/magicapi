{
  "properties" : { },
  "id" : "e478c510b24f4dce9b260adc2946518c",
  "script" : null,
  "groupId" : "8505cc65c46145bdb3e20a0ff5d14699",
  "name" : "1.3.4使用set标签",
  "createTime" : null,
  "updateTime" : 1679917099131,
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
  "responseBody" : null,
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
// 文档： https://www.ssssssss.org/magic-api/pages/quick/crud/#mybatis%E8%AF%AD%E6%B3%95%E6%94%AF%E6%8C%81
var sql = """
update test_data
    <set>
        <if test="name != null">
            name = #{name}
        </if>
        <if test="content != null">
            content = #{content}
        </if>
    </set>
    where `id` = #{id}
"""
return db.update(sql)