package com.bdqn.blog.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
/**
 *Created by IntelliJ IDEA.
 User: fujiawei
 Date: 2018/1/7
 Time: 12:19
 文件工具类
 */
public class FileUtil implements Serializable {

	private static final long serialVersionUID = 6080612784453115598L;
	public  static Logger log  = java.util.logging.Logger.getLogger("log4j.properties");

	public static void writeObject(String filePath, Object object) {
		try {
			FileOutputStream outStream = new FileOutputStream(filePath);
			ObjectOutputStream objectOutputStream = new ObjectOutputStream(outStream);
			objectOutputStream.writeObject(object);
			outStream.close();
			objectOutputStream.close();

			log.info(filePath + "文件写入成功");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			log.info(e.getMessage());
		} catch (IOException e) {
			e.printStackTrace();
			log.info(e.getMessage());
		}
	}

	public static Object readObject(String filePath) throws IOException, ClassNotFoundException {
		// 反序列化，将对象信息读出
		FileInputStream fis;
		ObjectInputStream ois;
		fis = new FileInputStream(filePath);
		ois = new ObjectInputStream(fis);
		Object readObject = ois.readObject();
		ois.close();
		fis.close();
		return readObject;
	}



	/**
	 * 
	 * @param filenameSuffix
	 *            文件后缀名
	 * @param currentDirUsed
	 *            当前使用的文件目录
	 * @param currentFilenameList
	 *            当前文件名称的列表
	 */
	public static void findFiles(String filenameSuffix, String currentDirUsed, List<String> currentFilenameList) {
		File dir = new File(currentDirUsed);
		if (!dir.exists() || !dir.isDirectory()) {
			return;
		}
		for (File file : dir.listFiles()) {
			if (file.isDirectory()) {
				/**
				 * 如果目录则递归继续遍历
				 */
				findFiles(filenameSuffix, file.getAbsolutePath(), currentFilenameList);
			} else {
				/**
				 * 如果不是目录。 那么判断文件后缀名是否符合。
				 */
				if (file.getAbsolutePath().endsWith(filenameSuffix)) {
					currentFilenameList.add(file.getAbsolutePath());
				}
			}
		}
	}

	/**
	 * 
	 * @param delpath
	 *            要删除的文件目录
	 * @return
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public static boolean deletefile(String delpath) throws FileNotFoundException, IOException {
		try {
			File file = new File(delpath);
			if (!file.isDirectory()) {
				log.info("删除文件 path=" + file.getPath());
				log.info("删除文件 absolutepath=" + file.getAbsolutePath());
				log.info("删除文件 name=" + file.getName());
				file.delete();
				log.info("删除文件成功");
			} else if (file.isDirectory()) {
				String[] filelist = file.list();
				for (int i = 0; i < filelist.length; i++) {
					File delfile = new File(delpath + "/" + filelist[i]);
					if (!delfile.isDirectory()) {
						log.info("删除文件 path=" + delfile.getPath());
						log.info("删除文件 absolutepath=" + delfile.getAbsolutePath());
						log.info("删除文件 name=" + delfile.getName());
						delfile.delete();
						log.info("删除文件成功");
					} else if (delfile.isDirectory()) {
						deletefile(delpath + "/" + filelist[i]);
					}
				}
				// 不删除目录
				// file.delete();
			}
		} catch (FileNotFoundException e) {
			log.info(e.getMessage());
		}
		return true;
	}
	
    /**
     * 将文本文件中的内容读入到buffer中
     * @param buffer buffer
     * @param filePath 文件路径
     * @throws IOException 异常
     * @author cn.outofmemory
     * @date 2013-1-7
     */
    public static void readToBuffer(StringBuffer buffer, String filePath) throws IOException {
    	InputStream is = FileUtil.class.getClassLoader().getResourceAsStream(filePath);
        String line; // 用来保存每行读取的内容
        BufferedReader reader = new BufferedReader(new InputStreamReader(is, "utf-8"));
        line = new String(reader.readLine()); // 读取第一行
        while (line != null) { // 如果 line 为空说明读完了
            buffer.append(line); // 将读到的内容添加到 buffer 中
            buffer.append("\n"); // 添加换行符
            line = reader.readLine(); // 读取下一行
        }
        reader.close();
        is.close();
    }

    /**
     * 读取文本文件内容
     * @param filePath 文件所在路径
     * @return 文本内容
     * @throws IOException 异常
     * @author cn.outofmemory
     * @date 2013-1-7
     */
    public static String readFile(String filePath) throws IOException {
        StringBuffer sb = new StringBuffer();
        FileUtil.readToBuffer(sb, filePath);
        return sb.toString();
    }


	
	
	public static String getDateName(){
		Date date = new Date();
		SimpleDateFormat sdfRef = new SimpleDateFormat("yyyyMMddHHmm");
		return sdfRef.format(date);
	}
}
