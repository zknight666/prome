package project.bean;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import lombok.Getter;
import lombok.Setter;
import org.springframework.context.annotation.Scope;

@Getter
@Setter
@Scope("prototype")
public class ProjDetailDTO {
    private ProjectDTO projectDTO;
    private List<String> member_field;
    private HashMap<String, Object> rec_field_map;
    private List<String> project_tech_stack;
    private List<String> leader_tech_stack;
    private List<MemberCardDTO> memberCardList;

}
