package net.goinit.springboothelloworld;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

	@GetMapping("/")
	public String sayHello() {
		return "Hello from Cloud Code!! Running on MiniKube...Will be soon available for CloudBuild";
	}
	
}
