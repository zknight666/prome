package project.bean;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class ProjectDTO {
	
	private String id;
	
	private int projectId;
	private String title;
	private String team_leader;
	private String field;
	private String content;
	private String start_date;
	private String due_date;
	private int member_joined;
	private int member_need;
	private List<String> recruitmentFields; //모집 분야 테이블 (application)
	private List<String> recruitCounts; // 모집 분야 별 인원 수 (모집할 팀 멤버 수(member_need))
	private String recruit_state;
	private Map<String,String> tech_stacks; // 기술/언어 (tech_stack(Y or N))
	//private Date created_at;
	
	


}
