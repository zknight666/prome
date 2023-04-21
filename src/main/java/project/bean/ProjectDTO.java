package project.bean;


import java.util.Date;
import java.util.List;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProjectDTO {
	
	private String name;
	private String id;
	private String pwd;
	private String projectName;
	private String projectField; // 프로젝트 분야
	private List<String> recruitmentFields; //모집 분야 테이블 (application)
	private List<Integer> recruitCounts; // 모집 분야 별 인원 수 (모집할 팀 멤버 수(member_need))
	private String projectDescription;
	private String projectStartDate;
	private String projectEndDate;
	private List<String> skills; // 기술/언어 (tech_stack(Y or N))

//	private int id;
//	private String team_leader;
//	private String title;
//	private String field;
//	private String content;
//	private Date start_date;
//	private Date due_date;
//	private int member_joined;
//	private int member_need;
//	private Date created_at;
//	private String recruit_state;
	

}
