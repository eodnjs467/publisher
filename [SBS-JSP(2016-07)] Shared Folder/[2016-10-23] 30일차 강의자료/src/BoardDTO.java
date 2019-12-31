package board.model;
import java.sql.*;

public class BoardDTO {
	
	private int 	num			; // 글 번호
	private String 	name		; // 작성자 이름
	private String 	password	; // 글 비밀번호
	private String 	subject		; // 글 제목
	private String 	content		; // 글 본문
	private Date 	writeDate	; // 글 작성 날짜
	private Time 	writeTime	; // 글 작성 시간
	private int 	ref			; // 답글의 원글 번호
	private int 	step		; // 답글들의 출력 순서
	private int 	lev			; // 답글 깊이 (몇차 답글인지)
	private int 	readCnt		; // 글 조회수
	private int 	childCnt	; // 글 답글수
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public Time getWriteTime() {
		return writeTime;
	}
	public void setWriteTime(Time writeTime) {
		this.writeTime = writeTime;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getLev() {
		return lev;
	}
	public void setLev(int lev) {
		this.lev = lev;
	}
	public int getReadCnt() {
		return readCnt;
	}
	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}
	public int getChildCnt() {
		return childCnt;
	}
	public void setChildCnt(int childCnt) {
		this.childCnt = childCnt;
	}
}
