package cn.lavenliu.springboot.cruddemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api")
public class SentinelDemoController {

    @GetMapping("/flowControl")
    public String testFlowRule() {
        return new String("创建成功");
    }

}
