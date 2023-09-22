{
  "properties" : { },
  "id" : "f23ae79576934e719281e2dd64c78d15",
  "script" : null,
  "groupId" : "c851c185b0374b6ba5ae9ddd323e1ff8",
  "name" : "2.2log模块",
  "createTime" : null,
  "updateTime" : 1679917351626,
  "lock" : null,
  "createBy" : null,
  "updateBy" : null,
  "path" : "/log",
  "method" : "GET",
  "parameters" : [ {
    "name" : "message",
    "value" : "magic-api",
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
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": \"ok\",\n    \"timestamp\": 1679917338837,\n    \"executeTime\": 66\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
import log;
// 相关文档： https://www.ssssssss.org/magic-api/pages/module/log/
// 切换到"运行日志"查看日志信息
log.info('info日志:{}',message);
log.warn('warn日志');
try{
    return 1 / 0;
}catch(e){
    log.error('error日志',e);
}
return 'ok';