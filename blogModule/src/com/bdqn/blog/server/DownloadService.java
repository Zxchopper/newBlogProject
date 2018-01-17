package com.bdqn.blog.server;

import com.bdqn.blog.pojo.Download;

public interface DownloadService{

	int addDownload(Download download);
	int modifyDownload(Download download);
	int removeDownload(Integer id);

}