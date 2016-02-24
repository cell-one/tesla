package cn.diffpi.resource.asthma.user.model;

import cn.diffpi.kit.DateUtil;
import cn.dreampie.orm.Model;
import cn.dreampie.orm.annotation.Table;

/**
 *  Created by one__l on 2015年10月11日
 */
@Table(name = "asthma_user", cached = true)
public class User extends Model<User> {
  public final static User dao = new User();
  
  /***
	 * 登陆
	 * 
	 * @param loginName
	 * @param pwd
	 * @param platform
	 * @param deviceId
	 * @return
	 */
	public User login(String loginName, String pwd, String platform, String deviceId) {
		if (loginName == null || pwd == null || platform == null || deviceId == null) {
			return null;
		}
		try {
			String sql = "select * from asthma_user t where t.phonenum = ? and t.del = '0'";
			
			User user = dao.findFirst(sql , loginName.toLowerCase());
			if (user != null) {
				if (user.get("pwd") != null && user.get("pwd").equals(pwd)) {
					if (user.get("state") != null && user.get("state").equals("0")) {// 用户状态正常
						if (user.get("online").equals("1")) {// 用户已经在线
							
						}

						String time = DateUtil.getCurrentDate(DateUtil.DATE_MIN);

						/*new UserLoginLog()
						.set("ruid", user.getInt("id"))
						.set("platform", Integer.valueOf(platform))
						
						.set("device_id", deviceId)
						.set("time", time)
						.save();
						
						if(user.getStr("type").equals("0")){
							user.set("online", 1);
						}*/
						
						user
						.set("last_time", time)
						//.set("online", 1)
						.update();

						/*UserPojo userPojo = new UserPojo();
						BeanUtils.copyProperties(userPojo, pu);*/
						
						/*String head_portrait = JmsPersonInfo.dao.getPerson(user.getInt("id").toString()).getStr("head_portrait");
						
						UserVo userVo = ReturnData.copyModel(user, UserVo.class);
						userVo.setHead_portrait(head_portrait);*/
						
						return user;
					} else {
						//return ReturnData.getErrJson(40008);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			//return ReturnData.getErrJson(2);
		}
		return null;
	}
}
