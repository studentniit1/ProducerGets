package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.mapping.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;

import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

public class UploadController {

	
	public static void upload(String path, MultipartFile file, String fileName) {
		System.out.println(file);
		if (!file.isEmpty()) {
			InputStream inputStream = null;
			OutputStream outputStream = null;
			if (file.getSize() > 0) {
				try {
					inputStream = file.getInputStream();
				
				outputStream = new FileOutputStream(path + fileName);
				int readBytes = 0;
				byte[] buffer = new byte[1024];
				while ((readBytes = inputStream.read(buffer, 0, 1024)) != -1) {
					outputStream.write(buffer, 0, readBytes);
				}
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				try {
					outputStream.close();
					inputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			}
		}
	}
}


	

