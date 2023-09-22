package org.ssssssss.example.interceptor;


import org.ssssssss.magicapi.core.context.RequestEntity;
import org.ssssssss.magicapi.modules.db.BoundSql;
import org.ssssssss.magicapi.modules.db.inteceptor.SQLInterceptor;

import java.util.Arrays;


/**
 * 自定义SQL拦截器
 * https://ssssssss.org/magic-api/pages/senior/sql-interceptor/
 * @see org.ssssssss.magicapi.modules.db.inteceptor.SQLInterceptor
 */
public class CustomSqlInterceptor implements SQLInterceptor {

	/**
	 * 执行SQL之前
	 */
	@Override
	public void preHandle(BoundSql boundSql, RequestEntity requestEntity) {
		// 改写SQL
		boundSql.setSql(boundSql.getSql());
		// 改写参数
		boundSql.setParameters(Arrays.asList(boundSql.getParameters()));
	}

}
