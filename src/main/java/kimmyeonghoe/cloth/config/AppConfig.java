package kimmyeonghoe.cloth.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.ImportResource;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kimmyeonghoe.cloth.user.interceptor.LoginInterceptor;

@Configuration
@EnableAspectJAutoProxy
@EnableWebMvc
@ComponentScan("kimmyeonghoe.cloth")
@ImportResource("classpath:kimmyeonghoe/cloth/config/app.xml")
public class AppConfig implements WebMvcConfigurer{
   @Override
   public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
      configurer.enable();
   }
   
   @Override
   public void configureViewResolvers(ViewResolverRegistry registry) {
      registry.jsp("/WEB-INF/view/", ".jsp");
   }
   
   @Override
   public void addViewControllers(ViewControllerRegistry registry) {
      registry.addViewController("/").setViewName("/main");
      registry.addViewController("/admin").setViewName("admin/main");
   }
   
   @Override
   public void addInterceptors(InterceptorRegistry registry) {
      registry.addInterceptor(loginInterceptor())
      .addPathPatterns("/user/**");
   }
   
   @Bean
   public LoginInterceptor loginInterceptor() {
      return new LoginInterceptor();
   }
}