package cn.diffpi.resource.asthma.user;

import java.util.Date;
import java.util.List;

import cn.diffpi.resource.MobileApiResource;
import cn.diffpi.resource.user.model.User;
import cn.dreampie.orm.transaction.Transaction;
import cn.dreampie.route.annotation.API;
import cn.dreampie.route.annotation.DELETE;
import cn.dreampie.route.annotation.GET;
import cn.dreampie.route.annotation.POST;
import cn.dreampie.route.annotation.PUT;
import cn.dreampie.security.DefaultPasswordService;

/**
 *  Created by one__l on 2015年10月11日
 */
@API("/users")
public class UserResource extends MobileApiResource {

  @GET
  public List<User> users() {
    return User.dao.findBy("deleted_at IS NULL");
  }

  @GET("/:id")
  public User get(int id) {
    User user = User.dao.findFirstBy("id=?", id);
    if (user != null) {
      user.remove("password");
    }
    return user;
  }

  @POST
  public boolean save(User user) {
    String password = user.get("password");
    user.set("password", DefaultPasswordService.instance().crypto(password));
//    Role role = user.<Role>get("role");
//    if (role.get("id") == null) {
//      role.save();
//    }
//    role.updatePermissions();
    return user.save();
  }

  @PUT
  @Transaction
  public boolean update(User user) {
	  return true;
  }


  @DELETE("/:id")
  public boolean delete(int id) {
    return User.dao.updateColsBy("deleted_at", "id=?", new Date(), id);
  }
}
