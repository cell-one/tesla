package cn.diffpi.resource.user.model;

import cn.dreampie.orm.Model;
import cn.dreampie.orm.annotation.Table;

/**
 *  Created by one__l on 2015年10月11日
 */
@Table(name = "dh_user", cached = true)
public class User extends Model<User> {
  public final static User dao = new User();
  
}
