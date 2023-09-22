{
  "properties" : { },
  "id" : "9478131e5c704944a532b939a9d459cf",
  "script" : null,
  "groupId" : "ad31382a59c14517aa736c91dbdde8b0",
  "name" : "1.2.3分页查询",
  "createTime" : null,
  "updateTime" : 1679916898952,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/page",
  "method" : "POST",
  "parameters" : [ {
    "name" : "page",
    "value" : "1",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "size",
    "value" : "5",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
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
/**
 * 关于分页相关配置 
 * 配置文件：https://www.ssssssss.org/magic-api/pages/config/spring-boot/#page
 * 自定义分页参数获取： https://www.ssssssss.org/magic-api/pages/quick/page/#%E8%87%AA%E5%AE%9A%E4%B9%89%E5%88%86%E9%A1%B5%E5%8F%82%E6%95%B0%E8%8E%B7%E5%8F%96
 * 自定义分页结果：https://www.ssssssss.org/magic-api/pages/base/response/#%E6%9B%B4%E5%8A%A0%E7%81%B5%E6%B4%BB%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%93%E6%9E%84%E9%85%8D%E7%BD%AE
 */
return db.page("""
    select 
        api_method, 
        api_path
    from magic_api_info
""")