package com.myproject.estore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.myproject.estore.dto.OrderDTO;
import com.myproject.estore.dto.User;

@Repository
@Mapper
public interface UserMapper {

	//나의 전체 주문리스트
	@Select("select * from ordering where userid=#{uid}")
	public List<OrderDTO> uOList(String uid);
	
	//한달간 주문리스트
	@Select("SELECT * FROM ordering WHERE create_date BETWEEN DATE_ADD(NOW(),INTERVAL -1 MONTH ) AND NOW()")
	public List<OrderDTO> uMonthList(String uid);
	
	//정보수정
	@Update("update user set password=#{password}, name=#{name}, phone=#{phone},"
			+ "zipcode=#{zipcode}, addr=#{addr} where email=#{email} ")
	public void uUpdate(User user);
}
