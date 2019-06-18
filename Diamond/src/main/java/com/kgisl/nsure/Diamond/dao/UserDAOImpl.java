package com.kgisl.nsure.Diamond.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.List;
import java.util.ArrayList;
import java.util.Collection;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.ResultSetExtractor;  
import org.springframework.dao.DataAccessException;  
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.kgisl.nsure.Diamond.model.User;

@Repository
@Transactional
public class UserDAOImpl extends JdbcDaoSupport implements UserDAO {

	private Map<Long,User> userMap = new HashMap<Long,User>();
	
    @Autowired
    public UserDAOImpl(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
    
	private void initialize() {
        User user1 = new User(1, "16964", "Test", "test@test.com","");        
        userMap.put(user1.getUserId(), user1);        
    }
		
	/*public UserDAOImpl(){
		initialize();
	}*/
	
	class LoginRowMapper implements RowMapper<User> {
		@Override
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			User user = new User();
			user.setUserId(rs.getLong("NUM_LOGIN_ID"));
			user.setUserName(rs.getString("VCH_LOGIN_NAME"));
			user.setPassword(rs.getString("VCH_PASSWORD"));			
			return user;
		}
	}

	@Autowired
    private JdbcTemplate jdbcTemplate;
 	
	@Override
	public List<User> getAllUsers(String str_login_name) {
		String sql = "SELECT NUM_LOGIN_ID, VCH_LOGIN_NAME, VCH_PASSWORD FROM EIS_MST_LOGIN_ACCESS";
		return jdbcTemplate.query(sql, new LoginRowMapper());		
	}
	
	@Override
	public boolean authenticateSuccess(String loginName, String password) {
		String sql = "SELECT count(*) EIS_MST_LOGIN_ACCESS WHERE VCH_LOGIN_NAME = ? and VCH_PASSWORD=?";
		int count = jdbcTemplate.queryForObject(sql, Integer.class, loginName, password);
		if(count == 0) {
    		        return false;
		} else {
			return true;
		}
	}
	
	public int insert(User user) {
		return jdbcTemplate.update("insert into EIS_MST_LOGIN_ACCESS (NUM_LOGIN_ID, VCH_LOGIN_NAME, VCH_PASSWORD) " + " values(?, ?, ?)",
				new Object[] { user.getUserId(), user.getUserName(), user.getPassword() });
	}

		  
}
