package kr.ync.project.front.domain;

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
}
