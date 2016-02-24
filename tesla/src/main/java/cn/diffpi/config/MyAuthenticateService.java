package cn.diffpi.config;

import java.util.HashSet;
import java.util.Set;

import cn.diffpi.resource.user.model.User;
import cn.dreampie.security.AuthenticateService;
import cn.dreampie.security.PasswordService;
import cn.dreampie.security.Principal;
import cn.dreampie.security.credential.Credential;

/**
 * Created by ice on 15-1-7.
 */
public class MyAuthenticateService extends AuthenticateService {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Principal getPrincipal(String username) {
		PasswordService passwordService = getPasswordService();

		User u = new User().set("username", username).set("password", passwordService.crypto("123", "x")).put("permissions", new HashSet<String>() {{
			add("users");
		}});

		Principal<User> principal = new Principal<User>(u.<String> get("username"), u.<String> get("password"), "x", (Set) u.get("permissions"), u);
		return principal;
	}

	public Set<Credential> getAllCredentials() {
		Set<Credential> credentials = new HashSet<Credential>();
		credentials.add(new Credential("*", "/api/v1.0/users/**", "users"));
		return credentials;
	}
}
