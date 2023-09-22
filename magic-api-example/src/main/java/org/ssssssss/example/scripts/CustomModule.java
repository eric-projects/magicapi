package org.ssssssss.example.scripts;

import org.ssssssss.magicapi.core.annotation.MagicModule;
import org.ssssssss.script.annotation.Comment;

/**
 * 自定义模块
 * 脚本中使用
 * import custom;    //导入模块
 * custom.println('Custom Module!');
 *
 * https://ssssssss.org/magic-api/pages/senior/module/
 *
 * @see org.ssssssss.magicapi.core.annotation.MagicModule
 * @see org.ssssssss.magicapi.modules.db.SQLModule
 * @see org.ssssssss.magicapi.modules.http.HttpModule
 * @see org.ssssssss.magicapi.modules.servlet.RequestModule
 * @see org.ssssssss.magicapi.modules.servlet.ResponseModule
 */
@MagicModule("custom")
public class CustomModule {

	@Comment("方法名的注释(用于提示)")
	public void println(@Comment(name = "value", value = "参数名的提示(用于提示)")String value) {
		System.out.println(value);
	}
}
