package com.ehr.controller.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Zy
 * @date 27/06/2019 4:32 PM
 */
@Controller
@RequestMapping("/")
public class IndexController {
    @RequestMapping("index")
    public String index(){
        return "index/index";
    }
    @RequestMapping("welcome")
    public String welcome(){
        return "index/welcome";
    }
}
