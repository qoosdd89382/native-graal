package com.cherry.nativegraal;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class NativeGraalApplication {

	@Value("${test}")
	private String test;

	@RequestMapping("/")
	String home() {
		return "Hello World! by " + test;
	}

	public static void main(String[] args) {
		SpringApplication.run(NativeGraalApplication.class, args);
	}

}
