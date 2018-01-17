package com.bdqn.blog.controller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by 徐永乐 on 2018/1/10.
 */
@Controller
public class FileUploadController {
    // 上传文件会自动绑定到MultipartFile中
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String upload(HttpServletRequest request,
                         @RequestParam("description") String description,
                         @RequestParam("file") MultipartFile file) throws Exception {
        System.out.println(description);
        // 如果文件不为空，写入上传路径
        if (!file.isEmpty()) {
            // 上传文件路径
            String path = request.getServletContext().getRealPath("/upload");
            System.out.println(path);
            // 上传文件名
            String filename = file.getOriginalFilename();
            System.out.println(filename);
            File filepath = new File(path, filename);
            // 判断路径名是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            // 将上传文件保存到一个目标文件当中
            file.transferTo(new File(path + File.separator + filename));
            return "success";
        } else {
            return "error";
        }

    }
}
