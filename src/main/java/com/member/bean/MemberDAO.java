package com.member.bean;

import com.member.common.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
    private Connection conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;

    private final String M_INSERT = "insert into member(username, userid, password, email, phonenumber, blogurl, photo, detail, regdate) + values (?, ? ,sha1(?), ?, ?, ?, ?, ?, ?)";
    private final String M_UPDATE = "update member set username=?, userid=?, password=?, email=?, phonenumber=?, blogurl=?, photo=?, detail=?, regdate=?" + "where sid = ?";
    private final String M_DELETE = "delete from member where sid = ?";
    private final String M_SELECT = "select * from member where sid = ?";
    private final String M_LIST = "select * from member order by regdate desc";


    private final String MEMBER_GET = "select * from member where sid = ?";
    public MemberVO getMember(int sid) {
        MemberVO one = new MemberVO();
        System.out.println("===> JDBC로 getMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(MEMBER_GET);
            stmt.setInt(1, sid);
            rs = stmt.executeQuery();
            if(rs.next()) {
                one.setSid(rs.getInt("sid"));
                one.setUsername(rs.getString("username"));
                one.setUserid(rs.getString("userid"));
                one.setPassword(rs.getString("password"));
                one.setEmail(rs.getString("email"));
                one.setPhonenumber(rs.getString("phonenumber"));
                one.setBlogurl(rs.getString("blogurl"));
                one.setPhoto(rs.getString("photo"));
                one.setDetail(rs.getString("detail"));


            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return one;
    }
    public int insertMember(MemberVO vo) {
        System.out.println("===> JDBC로 insertMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_INSERT);
            stmt.setString(1, vo.getUsername());
            stmt.setString(2, vo.getUserid());
            stmt.setString(3, vo.getPassword());
            stmt.setString(4, vo.getEmail());
            stmt.setString(5, vo.getPhonenumber());
            stmt.setString(6, vo.getBlogurl());
            stmt.setString(7, vo.getPhoto());
            stmt.setString(8, vo.getDetail());

            stmt.executeUpdate();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    // 글 삭제
    public void deleteMember(MemberVO vo) {
        System.out.println("===> JDBC로 deleteMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_DELETE);
            stmt.setInt(1, vo.getSid());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public int updateMember(MemberVO vo) {
        System.out.println("===> JDBC로 updateMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_UPDATE);
            stmt.setString(1, vo.getUsername());
            stmt.setString(2, vo.getUserid());
            stmt.setString(3, vo.getPassword());
            stmt.setString(4, vo.getEmail());
            stmt.setString(5, vo.getPhonenumber());
            stmt.setString(6, vo.getBlogurl());
            stmt.setString(7, vo.getPhoto());
            stmt.setString(8, vo.getDetail());


            System.out.println(vo.getUsername() + "-" + vo.getUserid() + "-" + vo.getPassword() + "-" + vo.getEmail() + vo.getPhonenumber() + "-" + vo.getBlogurl() + "-" + vo.getPhoto() + "-" + vo.getDetail());
            stmt.executeUpdate();
            return 1;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<MemberVO> getMemberList(){
        List<MemberVO> list = new ArrayList<MemberVO>();
        System.out.println("===> JDBC로 getBoardList() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(M_LIST);
            rs = stmt.executeQuery();
            while(rs.next()) {
                MemberVO one = new MemberVO();
                one.setSid(rs.getInt("sid"));
                one.setUsername(rs.getString("username"));
                one.setUserid(rs.getString("userid"));
                one.setPassword(rs.getString("password"));
                one.setEmail(rs.getString("email"));
                one.setPhonenumber(rs.getString("phonenumber"));
                one.setBlogurl(rs.getString("blogurl"));
                one.setPhoto(rs.getString("photo"));
                one.setDetail(rs.getString("detail"));
                one.setRegdate(rs.getDate("regdate"));
                list.add(one);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}


