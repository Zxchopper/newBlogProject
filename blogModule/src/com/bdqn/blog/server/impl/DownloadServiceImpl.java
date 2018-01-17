package com.bdqn.blog.server.impl;

import com.bdqn.blog.dao.DownloadMapper;
import com.bdqn.blog.pojo.Download;
import com.bdqn.blog.server.DownloadService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DownloadServiceImpl implements DownloadService {

    @Resource
    private DownloadMapper dao;
    @Override
    public int addDownload(Download download) {
        return dao.insertDownload(download);
    }

    @Override
    public int modifyDownload(Download download) {
        return dao.updateDownload(download);
    }

    @Override
    public int removeDownload(Integer id) {
        return dao.deleteDownload(id);
    }

    @Override
    public List<Download> selectDownloadAll() {
        return dao.selectDownloadAll();
    }
}
