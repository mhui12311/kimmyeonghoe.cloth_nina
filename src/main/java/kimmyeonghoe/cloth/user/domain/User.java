package kimmyeonghoe.cloth.user.domain;

import java.time.LocalDate;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor //기본 생성자
@AllArgsConstructor //parameter 생성자
public class User {
	private String userId;
	private String userPw;
	private String userName;
	@JsonFormat(pattern="yyyy-MM-dd", timezone="Asia/Seoul") //LocalDate를 String으로 만들어주는 방식
	private LocalDate birthday;
	private String contact;
	private String email;
	private String postcode;
	private String address;
	private String addressDetail;
	@JsonFormat(pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private LocalDate joinDate;
	@JsonFormat(pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private LocalDate withdrawalDate;
}
