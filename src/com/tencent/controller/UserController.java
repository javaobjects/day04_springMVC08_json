package com.tencent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tencent.pojo.User;

@Controller
public class UserController {

	
	/**
	 * 
	 * <p>Title: responseJson</p>  
	 * <p>
	 *	Description: 
	 *  @ResponseBody 将返回值User转换成为json格式的字符串
	 * </p> 
	 * @param user
	 * @return
	 */
	@RequestMapping("/responseJson")
	public @ResponseBody User responseJson(User user) {
		System.out.println("参数key=value格式的用户信息:" + user);
		
		//调用 service方法进行校验(略)
		user.setTelephone("13511011211");
		user.setAge(18);
		user.setSex("男");
		user.setAddress("朝阳区");
		
		return user;
	}
	
	/**
	 * 
	 * <p>Title: requestAndResponseJson</p>  
	 * <p>
	 *	Description: 
	 *	@RequestBody 将Json格式字符串参数转换为User对象
	 *  @ResponseBody 将返回值User转换成为json格式的字符串
	 * </p> 
	 * @param user
	 * @return
	 */
	@RequestMapping("/requestAndResponseJson")
	public @ResponseBody User requestAndResponseJson(@RequestBody User user) {
		System.out.println("参数Json格式的用户信息 ：" + user);
		user.setTelephone("13511011211");
		user.setAge(18);
		user.setSex("男");
		user.setAddress("朝阳区");
		
		return user;
		
	}
}
