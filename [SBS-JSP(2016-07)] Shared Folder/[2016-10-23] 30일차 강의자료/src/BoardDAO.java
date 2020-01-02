package board.model;

import java.sql.*;
import java.util.ArrayList;
import javax.naming.*;
import javax.sql.DataSource;

public class BoardDAO {
	
	DataSource ds;
	public static final int WRITING_PER_PAGE = 10;
	
	public BoardDAO(){
		try{
			Context initContext = 
				(Context) new InitialContext().lookup("java:comp/env/");
			ds = (DataSource) initContext.lookup("jdbc/mysql");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	// 게시판 목록 조회 기능 수행
	public ArrayList<BoardDTO> boardList(String curPage){
		
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn = ds.getConnection();
			String sql = 
		"SELECT num, name, password, subject, content, write_date, "
	+   "       write_time, ref, step, lev, read_cnt, child_cnt "
	+ 	"  FROM BOARD "
	+   "ORDER BY ref desc, step asc "
	+   " LIMIT ?, ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, WRITING_PER_PAGE * (Integer.parseInt(curPage) - 1));
			pstmt.setInt(2, WRITING_PER_PAGE);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				int 	num 		= rs.getInt("num");
				String 	name 		= rs.getString("name");
				String 	password 	= rs.getString("password");
				String 	subject 	= rs.getString("subject");
				String 	content 	= rs.getString("content");
				Date 	writeDate 	= rs.getDate("write_date");
				Time 	writeTime 	= rs.getTime("write_time");
				int 	ref 		= rs.getInt("ref");
				int 	step 		= rs.getInt("step");
				int 	lev 		= rs.getInt("lev");
				int 	readCnt 	= rs.getInt("readCnt");
				int 	childCnt 	= rs.getInt("childCnt");
				
				BoardDTO writing = new BoardDTO();
				writing.setNum(num);
				writing.setName(name);
				writing.setPassword(password);
				writing.setSubject(subject);
				writing.setContent(content);
				writing.setWriteDate(writeDate);
				writing.setWriteTime(writeTime);
				writing.setRef(ref);
				writing.setStep(step);
				writing.setLev(lev);
				writing.setReadCnt(readCnt);
				writing.setChildCnt(childCnt);
				
				list.add(writing);
				
				
				
			}
		}
		
	}

}
