package com.ehr.controller.login;
import java.util.HashMap;
import java.util.Map;

import com.ehr.model.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ehr.dao.EmpDao;
import com.ehr.service.EmpService;

/**
 * 登录注册界面控制器
 * @author WW
 *
 */
@Controller
@RequestMapping
public class LoginContorller {
	@Autowired
	EmpService empService;
	
	@RequestMapping("/")
	public String login() {
		return "login/Login";
	}
	@RequestMapping("/login/loginAjax")
	@ResponseBody
	public Map<String, Object> loginAjax(String username,String password) {
		Map<String, Object> list = new HashMap<>();
		Integer id = empService.selectByUserNameAndPwd(username, password);
		if (id != null) {


			Emp emp = empService.selectById(id);
			String name = emp.getName();
			list.put("msg", name);
		}else {
			list.put("msg", "NO");
		}
		return list;
	}
}
