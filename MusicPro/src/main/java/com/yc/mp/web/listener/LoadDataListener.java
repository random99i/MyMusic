package com.yc.mp.web.listener;

import java.io.File;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.logging.log4j.LogManager;

import com.yc.mp.util.ServletUtil;

/**
 * Application Lifecycle Listener implementation class LoadDataListener
 *
 */
@WebListener
public class LoadDataListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent sce) {
		File dir0 = new File(new File(sce.getServletContext().getRealPath("/")).getParentFile(),
				ServletUtil.UPLOAD_DIR_NAME);
		File dir1 = new File(new File(sce.getServletContext().getRealPath("/")).getParentFile(),
				ServletUtil.UPLOAD_BACKDIR_Mp3NAME);
		File dir2 = new File(new File(sce.getServletContext().getRealPath("/")).getParentFile(),
				ServletUtil.UPLOAD_BACKDIR_PicNAME);
		if (!dir0.exists()) {
			dir0.mkdirs();
			LogManager.getLogger().debug("文件上传的路径不存在创建新文件路径" + dir0);
		}
		ServletUtil.UPLOAD_DIR = dir0.getAbsolutePath();
		if (!dir1.exists()) {
			dir1.mkdirs();
			LogManager.getLogger().debug("文件上传的路径不存在创建新文件路径" + dir1);
		}
		ServletUtil.UPLOAD_BACKDIR_Mp3 = dir1.getAbsolutePath();
		if (!dir2.exists()) {
			dir2.mkdirs();
			LogManager.getLogger().debug("文件上传的路径不存在创建新文件路径" + dir2);
		}
		ServletUtil.UPLOAD_BACKDIR_Pic = dir2.getAbsolutePath();

	}

	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
	}

}
