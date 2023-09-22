package org.ssssssss.example.provider;

import org.apache.commons.lang3.math.NumberUtils;
import org.ssssssss.magicapi.modules.db.model.Page;
import org.ssssssss.magicapi.modules.db.provider.PageProvider;
import org.ssssssss.script.runtime.RuntimeContext;

import java.util.Objects;

/**
 * 自定义获取分页参数
 * https://ssssssss.org/magic-api/pages/quick/page/
 * @see org.ssssssss.magicapi.modules.db.provider.PageProvider
 * @see org.ssssssss.magicapi.modules.db.provider.DefaultPageProvider
 */
public class CustomPageProvider implements PageProvider {

	@Override
	public Page getPage(RuntimeContext context) {
		// 从Request中提取page以及pageSize
		long page = NumberUtils.toLong(Objects.toString(context.eval("page"), ""), 1);
		long pageSize = NumberUtils.toLong(Objects.toString(context.eval("size"), ""), 10);
		return new Page(pageSize, (page - 1) * pageSize);
	}
}
