package com.jt.TaskManager.Security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.jt.TaskManager.Model.Service.MyUserDetailsService;

@Configuration
@EnableWebSecurity

public class Config extends WebSecurityConfigurerAdapter{
	@Autowired
	private final PasswordEncoder passwordEncoder;
	 @Autowired
	    private MyUserDetailsService userDetailsService;

	@Autowired
	public Config(PasswordEncoder passwordEncoder) {
		super();
		this.passwordEncoder = passwordEncoder;
		
		
	}
	
	  @Override
	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	                auth
	                    .userDetailsService(userDetailsService)
	                    .passwordEncoder(passwordEncoder);
	    }

		@Override
		protected void configure (HttpSecurity http) throws Exception{
			http 
			.csrf().disable()
			.authorizeRequests()
			.antMatchers("/", "index", "/csss/*", "/js/*","/jsp/*").permitAll()
			.antMatchers("/api/**").hasRole(Role.STANDARD.name())
			.anyRequest()
			.authenticated()
			.and()
			.formLogin()
				.loginPage("/index")
				.permitAll()
				.passwordParameter("password")
				.usernameParameter("username")
				.defaultSuccessUrl("/display", true)

			.and()
			.logout()
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout", "GET"))
				.logoutUrl("/logout")
				.clearAuthentication(true)
				.invalidateHttpSession(true)
				.deleteCookies("JSESSIONID", "remember-me", "XSRF-TOKEN")
				.logoutSuccessUrl("/login");
		}
	
}
