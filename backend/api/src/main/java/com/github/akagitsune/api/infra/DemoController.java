package com.github.akagitsune.api.infra;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @PostMapping("/hello")
    public String post() {
        return "Hello World";
    }
}
