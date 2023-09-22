{
  "properties" : { },
  "id" : "f34e97caaa0441acb396fa1eed3ac0da",
  "script" : null,
  "groupId" : "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name" : "2.1http模块",
  "createTime" : null,
  "updateTime" : 1679917330420,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/http",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {\n        \"code\": 1,\n        \"message\": \"success\",\n        \"data\": [{\n            \"api_name\": \"666\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"123\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }, {\n            \"api_name\": \"测试\"\n        }],\n        \"timestamp\": 1679917296254,\n        \"executeTime\": 42\n    },\n    \"timestamp\": 1679917296255,\n    \"executeTime\": 52\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
import http;
// 相关文档： https://www.ssssssss.org/magic-api/pages/module/http/
return http.connect('http://127.0.0.1:9999/db/module/list')
    .get()
    .getBody()