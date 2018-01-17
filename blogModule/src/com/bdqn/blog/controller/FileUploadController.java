package com.bdqn.blog.controller;

import java.io.*;
import java.util.Date;
import java.util.List;

import com.bdqn.blog.pojo.Download;
import com.bdqn.blog.server.DownloadService;
import com.sun.xml.internal.messaging.saaj.util.ByteOutputStream;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by 徐永乐 on 2018/1/10.
 */
@Controller
@RequestMapping("download")
public class FileUploadController {

    @Resource
    private DownloadService ser;
    @RequestMapping(value = "toUpload")
    public String toUpload(){
        return "fileUpload";
    }
    @RequestMapping(value = "toDownload")
    public String toDownload(HttpSession session, HttpServletRequest request, Model model){
        Object downloadUrl = session.getAttribute("downloadUrl");
        if(downloadUrl==null){
            System.out.println(request.getServletContext().getRealPath("/"));
            session.setAttribute("downloadUrl",request.getServletContext().getRealPath("/"));
        }
        List<Download> downloads = ser.selectDownloadAll();
        model.addAttribute("downloads",downloads);
        return "download";
    }
    // 上传文件会自动绑定到MultipartFile中
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String upload(HttpServletRequest request, @RequestParam(value="description",required = false) String description,
                         @RequestParam(value="title",required = false) String title, @RequestParam("file") MultipartFile file
                            ,@RequestParam(value="price", required=false)Double price) {

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
            try {
                file.transferTo(new File(path + File.separator + filename));
                ser.addDownload( new Download(new Date(),title,description,"/upload/"+filename,price));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "success";
    }
    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public ResponseEntity<byte[]> download(HttpServletRequest request,@RequestParam("path") String fileName)  {
        String path = request.getServletContext().getRealPath("/");
        File file=new File(path+fileName);
        // 如果文件不为空，写入上传路径
        byte[] b=null;
        if (file.exists()) {
            byte[] body = null;
            try {
                InputStream is = new FileInputStream(file);
                body = new byte[is.available()];
                is.read(body);
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            HttpHeaders headers = new HttpHeaders();
            headers.add("Content-Disposition", "attchement;filename=" + file.getName());
            HttpStatus statusCode = HttpStatus.OK;
            ResponseEntity<byte[]> entity = new ResponseEntity<byte[]>(body, headers, statusCode);
            return entity;
        }
        return null;
    }
}
