package cn.diffpi.resource.asthma.user.model;

import cn.dreampie.orm.Model;
import cn.dreampie.orm.annotation.Table;

/***
 * 用户登录日志管理类
 * @author one__
 *
 */
@Table(name="asthma_user_login_log",cached=true)
public class AsthmaUserLoginLog extends Model<AsthmaUserLoginLog>{
	public final static AsthmaUserLoginLog dao = new AsthmaUserLoginLog();
}
