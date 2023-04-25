package project.bean;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import lombok.Getter;
import lombok.Setter;
import org.springframework.context.annotation.Scope;

@Getter
@Setter
@Scope("prototype")
public class ProjCardDTO {
    private String isBookmark;
    private ArrayList<String> project_tech_arr;
    private int heartCount;
    private HashMap<String, Object> rec_field_map;
    private List<String> member_field;
    private ProjectDTO projectDTO;


}
