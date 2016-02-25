package cn.diffpi.resource.asthma.user.model;

import cn.dreampie.orm.Model;
import cn.dreampie.orm.annotation.Table;

@Table(name = "asthma_person", cached = true)
public class AsthmaPerson extends Model<AsthmaPerson>{
	public final static AsthmaPerson dao = new AsthmaPerson();
	
	
}
