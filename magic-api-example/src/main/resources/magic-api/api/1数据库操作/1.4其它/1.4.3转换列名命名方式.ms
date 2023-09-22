{
  "properties" : { },
  "id" : "5efb58bc344d4a66a643da9102594d53",
  "script" : null,
  "groupId" : "b84bbe97a3d54de69e5a305d75048c4f",
  "name" : "1.4.3转换列名命名方式",
  "createTime" : null,
  "updateTime" : 1679916950888,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/column",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": [{\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }, {\n        \"apiName\": \"测试\"\n    }],\n    \"timestamp\": 1679878077844,\n    \"executeTime\": 5\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
/**
 * default (保持原样)
 * camel (驼峰命名)
 * pascal (帕斯卡命名)
 * upper (全大写)
 * lower (全小写)
 * 
 * 配置全局列名转换规则：https://www.ssssssss.org/magic-api/pages/config/spring-boot/#sql-column-case
 */
return db.camel().select('select api_name from magic_api_info')