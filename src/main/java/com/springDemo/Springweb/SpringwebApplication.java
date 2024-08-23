package com.springDemo.Springweb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
// @SpringBootApplication(exclude =
// org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class SpringwebApplication {

	public static void main(String[] args) {
		// SpringApplication.run(SpringwebApplication.class, args);

		ApplicationContext abc = SpringApplication.run(SpringwebApplication.class, args);
		// for (String s : abc.getBeanDefinitionNames()) {
		// System.out.println(s);
		// }
	}

}
