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
	private Date signup_date;
	private String[] tech;

	public UserDTO(String address1, String address2, String address3) {
		this.address1 = "null";
		this.address2 = "null";
		this.address3 = "null";
	}
}
