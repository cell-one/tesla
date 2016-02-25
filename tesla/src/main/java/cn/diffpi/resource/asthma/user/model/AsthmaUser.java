package cn.diffpi.resource.asthma.user.model;

import cn.diffpi.kit.DateUtil;
import cn.dreampie.orm.Model;
import cn.dreampie.orm.annotation.Table;
import cn.dreampie.security.DefaultPasswordService;

/**
 * Created by one__l on 2015年10月11日
 */
@Table(name = "asthma_user", cached = true)
public class AsthmaUser extends Model<AsthmaUser> {
	public final static AsthmaUser dao = new AsthmaUser();

	/***
	 * 获取用户信息
	 * 
	 * @return
	 */
	public AsthmaPerson getPerson() {
		AsthmaPerson person;
		if (this.get("pserson") == null && this.get("id") != null) {
			person = AsthmaPerson.dao.findFirstBy(" user = ?", this.get("id"));

			if(person != null){
				person.remove("user", "id");
			} else {
				person = new AsthmaPerson();
			}
			this.put("person", person);
			
		} else {
			return this.get("person");
		}

		return person;
	}

	/***
	 * 登陆
	 * 
	 * @param loginName
	 * @param pwd
	 * @param platform
	 * @param deviceId
	 * @return
	 */
	public AsthmaUser login(String loginName, String pwd, String platform, String deviceId) {
		if (loginName == null || pwd == null || platform == null || deviceId == null) {
			return null;
		}
		try {
			String sql = "select * from asthma_user t where t.phonenum = ? and t.del = '0'";

			AsthmaUser user = dao.findFirst(sql, loginName.toLowerCase());
			if (user != null) {
				if (user.get("pwd") != null && DefaultPasswordService.instance().match(pwd, user.<String>get("pwd")) ) {
					if (user.get("state") != null && user.get("state").equals("0")) {// 用户状态正常
						if (user.get("online").equals("1")) {// 用户已经在线

						}

						String time = DateUtil.getCurrentDate(DateUtil.DATE_MIN);

						new AsthmaUserLoginLog()
						.set("ruid", user.get("id"))
						.set("platform", Integer.valueOf(platform))
						.set("device_id", deviceId)
						.set("time", time)
						.save();

						if (user.get("type").equals("0")) {
							user.set("online", 1);
						}

						user.set("last_time", time).set("online", 1).update();

						user.filter();
						return user;
					} else {
						// return ReturnData.getErrJson(40008);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			// return ReturnData.getErrJson(2);
		}
		return null;
	}
	
	/***
	 * 用户注册
	 */
	public void register(String phone , String pwd){
		if(phone == null || pwd == null){
			//return ReturnData.getErrJson(3);
		}
		
		AsthmaUser user = new AsthmaUser()
		.set("phonenum", phone)
		.set("pwd", DefaultPasswordService.instance().crypto(pwd))
		.set("state", 0)
		.set("isvali", 0)
		.set("type", 0)
		.set("del", 0)
		.set("online", 0)
		.set("create_time", DateUtil.getCurrentDate(DateUtil.DATE_MIN));
		
		user.save();
		user.filter();
		
	}
	
	/***
	 * 验证手机号码
	 * 
	 * @param phonenum
	 * @return
	 */
	public void valiPhonenumRepeat(String phonenum) {
		if (phonenum == null || phonenum.equals("")) {
			//return ReturnData.getErrJson(3);
		}
		
		String sql = "select * from jms_user t where t.phonenum = '" + phonenum + "' and t.del = '0'";
		
		if(dao.findFirst(sql) != null){
			//return ReturnData.getErrJson(40007);
		}
		
		//return ReturnData.getSuccessCode();
	}
	
	public void filter(){
		this.remove(new String[] { "pwd", "del" });
	}
}
