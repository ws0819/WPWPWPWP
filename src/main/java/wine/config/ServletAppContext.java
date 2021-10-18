package wine.config;

import javax.annotation.Resource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import wine.beans.AdminBean;
import wine.beans.UserBean;
import wine.interceptor.CheckAdminLoginIntercepter;
import wine.interceptor.CheckLoginInterceptor;
import wine.mapper.AdminMapper;
import wine.mapper.FaqMapper;
import wine.mapper.NoticeMapper;
import wine.mapper.ProductMapper;
import wine.mapper.UserMapper;


// Spring MVC 프로젝트에 관련된 설정을 하는 클래스
@Configuration
// Controller 어노테이션이 셋팅되어 있는 클래스를 Controller로 등록한다.
@EnableWebMvc
// 스캔할 패키지를 지정한다.
@ComponentScan("wine.controller")
@PropertySource("/WEB-INF/properties/db.properties")
@ComponentScan("wine.service")
@ComponentScan("wine.DAO")
public class ServletAppContext implements WebMvcConfigurer{
	
	
	@Value("${db.classname}")
	private String db_classname;
	
	@Value("${db.url}")
	private String db_url;
	
	@Value("${db.username}")
	private String db_username;
	
	@Value("${db.password}")
	private String db_password;
	
	@Resource(name="loginUser")
	private UserBean loginUser;
	
	@Resource(name="loginAdminBean")
	private AdminBean loginAdminBean;
	
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/",".jsp");
	}

	//정적 파일의 경로 지정
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
	}
	 
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);
		return source;
	}
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception{
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);
		SqlSessionFactory factory = factoryBean.getObject();
		return factory;
	}
	@Bean
	public MapperFactoryBean<AdminMapper> getAdminMapper(SqlSessionFactory factory){
		MapperFactoryBean<AdminMapper> factoryBean = new MapperFactoryBean<AdminMapper>(AdminMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	@Bean
	public MapperFactoryBean<NoticeMapper> getNoticeMapper(SqlSessionFactory factory){
		MapperFactoryBean<NoticeMapper> factoryBean = new MapperFactoryBean<NoticeMapper>(NoticeMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<UserMapper> getUserMapper(SqlSessionFactory factory){
		MapperFactoryBean<UserMapper> factoryBean = new MapperFactoryBean<UserMapper>(UserMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
<<<<<<< HEAD
	public MapperFactoryBean<ProductMapper> getProductMapper(SqlSessionFactory factory){
		MapperFactoryBean<ProductMapper> factoryBean = new MapperFactoryBean<ProductMapper>(ProductMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
=======
	public MapperFactoryBean<FaqMapper> getFaqMapper(SqlSessionFactory factory){
		MapperFactoryBean<FaqMapper> factoryBean = new MapperFactoryBean<FaqMapper>(FaqMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}	
	
	
>>>>>>> refs/remotes/origin/develop
	//메세지(error_message) 선언과 충돌되므로 별도로 관리
	@Bean
	public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	
	//유효성 검사 메세지 등록
	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
		res.setBasename("WEB-INF/properties/error");
		return res;
	}
	//Interceptor
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		WebMvcConfigurer.super.addInterceptors(registry);
		
		CheckAdminLoginIntercepter checkAdminLoginIntercepter = new CheckAdminLoginIntercepter(loginAdminBean);	
		InterceptorRegistration reg1 = registry.addInterceptor(checkAdminLoginIntercepter);
		reg1.addPathPatterns("/admin/admin_main", "/notice/notice_write", "/notice/notice_modify");
		
		CheckLoginInterceptor checkLoginInterceptor = new CheckLoginInterceptor(loginUser);
		InterceptorRegistration reg2 = registry.addInterceptor(checkLoginInterceptor);
		reg2.addPathPatterns("/subscribe/subscribe_product");
		
	}
}










