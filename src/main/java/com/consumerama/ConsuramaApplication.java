package com.consumerama;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
<<<<<<< HEAD
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
=======
>>>>>>> 3931495b49e6a875f51e5976ca517dfe147bc3bf

@SpringBootApplication
public class ConsuramaApplication {

	public static void main(String[] args) {
		SpringApplication.run(ConsuramaApplication.class, args);
	}
<<<<<<< HEAD
	
	@Bean
	public ViewResolver getViewResolver(){
	    InternalResourceViewResolver resolver = new InternalResourceViewResolver();
	    resolver.setPrefix("/WEB-INF/jsp/");
	    resolver.setSuffix(".jsp");
	    return resolver;
	}
=======
>>>>>>> 3931495b49e6a875f51e5976ca517dfe147bc3bf
}
