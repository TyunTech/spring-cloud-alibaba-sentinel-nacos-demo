package cn.lavenliu.springboot.cruddemo.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class NacosConfigTestController {
    @Value("${url.name}")
    private String name;

    @Value("${url.address}")
    private String address;

    @GetMapping("/nacosConfig")
    public String nacosConfig() {
        return "name: " + name + "; address: " + address;
    }
}
