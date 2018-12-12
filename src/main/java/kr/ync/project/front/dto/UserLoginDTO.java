package kr.ync.project.front.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserLoginDTO {
	
	private String user_id;
	private String user_password;
	private boolean useCookie;

}
