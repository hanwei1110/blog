package com.blog.action.upload;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.springframework.stereotype.Controller;

import com.blog.BaseAction;

@Controller
public class ImageUpload extends BaseAction{
	private File some; //得到上传的文件
	private String someFileName;//得到文件名称
	private String someContentType; //得到文件类型
	
	private String imagePath;
	
	public String execute() throws Exception{
		if(some.getTotalSpace() == 0 || some==null){
			return "success";
		}
		String imageName = "file_"+System.currentTimeMillis()+someFileName.substring(someFileName.lastIndexOf("."));
		imagePath = "image_upload/"+imageName;
		String realImagePath = servletContext.getRealPath(imagePath);
		BufferedInputStream bis = new BufferedInputStream(new FileInputStream(some));
		BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(realImagePath));
		this.cp(bis, bos);
		some = null;
		bis.close();
		bos.close();
		
		return "success";
	}
	
	
	/*复制文件，复制in到out，不关闭流*/
	public void cp(InputStream in,OutputStream out) throws IOException{
		byte[] buf = new byte[1024 * 512]; //512k缓冲
		int count;
		while((count = in.read(buf)) !=-1){
			//读取到数组buf中
			out.write(buf,0,count); //写入到输出流
		}
		out.flush(); //刷出缓冲到目标流
	}

	public File getSome() {
		return some;
	}

	public void setSome(File some) {
		this.some = some;
	}

	public String getSomeFileName() {
		return someFileName;
	}

	public void setSomeFileName(String someFileName) {
		this.someFileName = someFileName;
	}

	public String getSomeContentType() {
		return someContentType;
	}

	public void setSomeContentType(String someContentType) {
		this.someContentType = someContentType;
	}
	
	public String getImagePath() {
		return imagePath;
	}


	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
}
