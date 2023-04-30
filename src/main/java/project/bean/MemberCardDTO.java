package project.bean;

import java.util.List;
import lombok.Getter;
import lombok.Setter;
import org.springframework.context.annotation.Scope;

@Getter
@Setter
@Scope("prototype")
public class MemberCardDTO {
    private String userId;
    private String app_field;
    private String user_tech_stack;
}
