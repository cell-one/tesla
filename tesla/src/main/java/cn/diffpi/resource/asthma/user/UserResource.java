package cn.diffpi.resource.asthma.user;

import java.util.Date;
import java.util.List;

import cn.diffpi.resource.MobileApiResource;
import cn.diffpi.resource.asthma.user.model.AsthmaUser;
import cn.dreampie.orm.transaction.Transaction;
import cn.dreampie.route.annotation.API;
import cn.dreampie.route.annotation.DELETE;
import cn.dreampie.route.annotation.GET;
import cn.dreampie.route.annotation.POST;
import cn.dreampie.route.annotation.PUT;

/**
 * Created by one__l on 2015年10月11日
 */
@API("/users")
public class UserResource extends MobileApiResource {

	@GET
	public List<AsthmaUser> AsthmaUsers() {
		return AsthmaUser.dao.findBy("deleted_at IS NULL");
	}

	@GET("/:id")
	public AsthmaUser get(int id) {
		AsthmaUser user = AsthmaUser.dao.findFirstBy("id=?", id);
		if (user != null) {
			user.remove(new String[] { "pwd", "del" });
		}
		return user;
	}

	/***
	 * 注册
	 * @param AsthmaUser
	 * @return
	 */
	@POST
	public boolean save(String phone , String pwd) {
		AsthmaUser.dao.register(phone, pwd);
		return true;
	}

	@PUT
	@Transaction
	public boolean update(AsthmaUser user) {
		return true;
	}

	@DELETE("/:id")
	public boolean delete(int id) {
		return AsthmaUser.dao.updateColsBy("deleted_at", "id=?", new Date(), id);
	}
}
