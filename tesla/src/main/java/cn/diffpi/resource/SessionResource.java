package cn.diffpi.resource;

import cn.diffpi.resource.user.model.User;
import cn.dreampie.route.annotation.API;
import cn.dreampie.route.annotation.DELETE;
import cn.dreampie.route.annotation.GET;
import cn.dreampie.route.annotation.POST;
import cn.dreampie.security.Principal;
import cn.dreampie.security.Subject;


/**
 * Created by ice on 15-1-16.
 */
@API("/sessions")
public class SessionResource extends ApiResource {

  @GET
  public User get() {
//    测试 通过主键生成器生成主键 如 uuid
//    Token token = new Token();
//    token.set("username", "a").set("created_at", new Date()).set("expiration_at", new Date(new Date().getTime() + 1000)).set("used_to", 0);
//    if (token.save()) {
//      System.out.println(Jsoner.toJSON(token));
//    }
    Principal<User> principal = Subject.getPrincipal();
    if (principal != null)
      return principal.getModel();
    else
      return null;
  }


  @POST
  public User login(String username, String password, boolean rememberMe) {
    Subject.login(username, password, rememberMe);
    return (User) Subject.getPrincipal().getModel();
  }


  @DELETE
  public boolean logout() {
    Subject.logout();
    return true;
  }
}