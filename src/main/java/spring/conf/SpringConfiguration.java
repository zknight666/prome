package spring.conf;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
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
	
	
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(driver);
		basicDataSource.setUrl(url);
		basicDataSource.setUsername(username);
		basicDataSource.setPassword(password);
		
		return basicDataSource;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setDataSource(dataSource());
							//setConfigLocation => resource를 원함
							// new ClassPathResource => resource를 제공해줌.
		sqlSessionFactoryBean.setConfigLocation(new ClassPathResource("spring/mybatis-config.xml"));
		sqlSessionFactoryBean.setMapperLocations(new ClassPathResource("user/dao/userMapper.xml"));
		
		return sqlSessionFactoryBean.getObject();
				
	}

	// sqlSessionFactoryBean -> exception -> sqlSessionTemplate(sqlSessionFactory()); 부분도 똑같이 exception 걸어야함.
	@Bean
	public SqlSessionTemplate sqlSession() throws Exception {
		SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory());
		return sqlSessionTemplate;
	}
	@Bean
	public DataSourceTransactionManager transactionManager() {
//		DataSourceTransactionManager dataSourceTransactionManager
//		= new DataSourceTransactionManager(dataSource());
//		return dataSourceTransactionManager;
		
		return new DataSourceTransactionManager(dataSource());
		
	}
	
	
}
