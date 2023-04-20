package com.mvc.prome;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import static org.junit.Assert.fail;
import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void testConnection() {
		
		try {
		Connection	con = DriverManager.getConnection(
				"jdbc:oracle:thin:@c9p95haexdtl3qvz_high?TNS_ADMIN=D:/Oracle/Wallet_C9P95HAEXDTL3QVZ",
				"admin",
				"Bitcampbitcamp123456789");
		{log.info(con);}
		
		} catch (Exception e) {
			 fail(e.getMessage());
		}
		

	}

}
