package org.ssssssss.example.scripts;

import org.springframework.web.multipart.MultipartFile;
import org.ssssssss.magicapi.core.annotation.MagicModule;
import org.ssssssss.script.annotation.Comment;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * 自定义模块
 * 脚本中使用
 * import file;    //导入模块
 * file.xxx('Custom Module!');
 * <p>
 * https://ssssssss.org/magic-api/pages/senior/module/
 *
 * @see MagicModule
 * @see org.ssssssss.magicapi.modules.db.SQLModule
 * @see org.ssssssss.magicapi.modules.http.HttpModule
 * @see org.ssssssss.magicapi.modules.servlet.RequestModule
 * @see org.ssssssss.magicapi.modules.servlet.ResponseModule
 */
@MagicModule("file")
public class FileModule {
    /**
     * 上传文件
     *
     * @param multiFile      文件
     * @param uploadPath     服务器上要存储文件的路径
     * @param uploadFileName 服务器上要存储的文件的名称
     * @return
     */
    @Comment("上传文件")
    public static boolean uploadFile(@Comment(name = "multiFile", value = "上传的附件对象") MultipartFile multiFile,
                                     @Comment(name = "uploadPath", value = "服务器地址") String uploadPath,
                                     @Comment(name = "uploadFileName", value = "附件名称") String uploadFileName) {
        //构建文件对象
        File file = new File(uploadPath);
        //文件目录不存在则递归创建目录
        if (!file.exists()) {
            boolean mkdirs = file.mkdirs();
            if (!mkdirs) {
                System.out.println("创建文件夹异常");
                return false;
            }
        }
        InputStream ins = null;
        FileOutputStream outs = null;
        try {
            //获取文件输入流
            ins = multiFile.getInputStream();
            //构建文件输出流
            outs = new FileOutputStream(uploadPath + uploadFileName);
            int len;
            byte[] bytes = new byte[1024];
            //读取一个bytes的文件内容
            while ((len = ins.read(bytes)) != -1) {
                outs.write(bytes, 0, len);
            }
            outs.close();
            System.out.println("上传成功：" + uploadPath + uploadFileName);
            return true;
        } catch (IOException e) {
            System.out.println("文件上传异常");
            e.printStackTrace();
        } finally {
            try {
                if (outs != null) {
                    outs.close();
                }
                if (ins != null) {
                    ins.close();
                }
            } catch (IOException e) {
                System.out.println("关闭流异常");
                e.printStackTrace();
            }
        }
        return false;
    }
}
