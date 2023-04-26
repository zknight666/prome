package project.bean;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ApplicantsDTO {
	private String team_leader;
	private String title;
	private int project_id;
	private String user_id;
	private String email1;
	private String email2;
	private String tech_stack;
	private String reason;
}
