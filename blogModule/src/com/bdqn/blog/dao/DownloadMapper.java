package com.bdqn.blog.dao;

import com.bdqn.blog.pojo.Download;
import org.apache.ibatis.annotations.Param;

public interface DownloadMapper{

	int insertDownload(Download download);
	int updateDownload(Download download);
	int deleteDownload(@Param("did") Integer id);

}