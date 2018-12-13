package kr.ync.project.front.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserLoginVO {
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_birthday;
	private String user_phonenum;
	private String user_email;
	private String user_address;
	private int mile_price;
}
