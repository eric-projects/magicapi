package org.ssssssss.example.provider;

import org.ssssssss.magicapi.core.config.JsonCodeConstants;
import org.ssssssss.magicapi.core.context.RequestEntity;
import org.ssssssss.magicapi.core.interceptor.ResultProvider;
import org.ssssssss.magicapi.core.model.JsonBean;

/**
 * 自定义JSON结果
 * https://ssssssss.org/magic-api/pages/base/response/
 * @see org.ssssssss.magicapi.core.interceptor.ResultProvider
 * @see org.ssssssss.magicapi.core.interceptor.DefaultResultProvider
 */
public class CustomJsonValueProvider implements ResultProvider {


	/**
	 * 构建请求结果
	 * @param requestEntity 请求相关信息
	 * @param code          状态码
	 * @param message       状态说明
	 * @param data          数据内容，可以通过data的类型判断是否是分页结果进行区分普通结果集和分页结果集
	 * @return
	 */
	@Override
	public Object buildResult(RequestEntity requestEntity, int code, String message, Object data) {
		// 分页结果
//		if (data instanceof PageResult) {
//			PageResult<?> pageResult = (PageResult<?>) data;
//			long total = pageResult.getTotal();
//			return new PageJsonBean(total, pageResult.getList());
//		}
		if (code == JsonCodeConstants.SUCCESS.getCode()) {
			return new JsonBean<>(200, message, data);
		}
		return new JsonBean<>(code, message, data);
	}
}
