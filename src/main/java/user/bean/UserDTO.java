package user.bean;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserDTO {
	private String id;
	private String name;
	private String pwd;
	private String gender;
	private String email1;
	private String email2;
	private String phone1;
	private String phone2;
	private String phone3;
	private String address1;
	private String address2;
	private String address3;
	private String role;
	public UserDTO(String name, String pwd, String gender, String email1, String email2, String phone1, String phone2,
			String phone3, String address1, String address2, String address3,String role) {
		this.name = "null";
		this.pwd = "null";
		this.gender = "n";
		this.email1 = "null";
		this.email2 = "null";
		this.phone1 = "null";
		this.phone2 = "null";
		this.phone3 = "null";
		this.role = "user";
	}
	private Date signup_date;

}
