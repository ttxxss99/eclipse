/**
 * @author Zy
 * @date 19/06/2019 10:45 AM
 */
package com.ehr;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//只会扫描该注释
@MapperScan("com.ehr.dao")
public class RunApp {
    public static void main(String[] args) {
        SpringApplication.run(RunApp.class,args);
        System.out.println("启动");
    }
}
