package project.bean;

import java.util.Date;
import java.util.List;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProjectDTO {

	private int id;
	private String team_leader;
	private String title;
	private String field;
	private String content;
	private Date start_date;
	private Date due_date;
	private int member_joined;
	private int member_need;
	private Date created_at;
	private String recruit_state;
}
