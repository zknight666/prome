package project.bean;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class ProjectMainpageDTO {
	
	private String id;
	private String title;
	private String field;
	private String recruitmentFields; // 모집 분야 별 인원 수 (JSON 객체)
	private String techstacks;
	private String member_joined;
	private String member_need;
	

}
