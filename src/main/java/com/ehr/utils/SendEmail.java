package com.ehr.utils;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Component;

@Component
@EnableAsync //异步类
public class SendEmail {	
	@Async //异步方法
	public void sendQQEmail(JavaMailSender mailSender,String title,String content,String toAddress) {
		//简单邮件对象
		SimpleMailMessage message = new SimpleMailMessage();
		//发送者 谁发的
		message.setFrom("1072571403@qq.com");
		//接收者 发给谁
		message.setTo(toAddress);
		//主题
		message.setSubject(title);
		//内容
		message.setText(content);
		//发送
		mailSender.send(message);
	}
}
