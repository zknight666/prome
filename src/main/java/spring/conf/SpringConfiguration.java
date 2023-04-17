package spring.conf;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@PropertySource("classpath:spring/db.properties")

//db.properties 로 부터 얻어오겠다.
@EnableTransactionManagement
public class SpringConfiguration {
	@Value("${jdbc.driver}")
	private String driver;
	
	@Value("${jdbc.url}") 
	private String url;
	
	@Value("${jdbc.username}")
	private String username;
	
	@Value("${jdbc.password}")
	private String password;
	
	
	
}
