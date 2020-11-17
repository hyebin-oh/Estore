package com.myproject.estore.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.myproject.estore.dto.OrderDTO;

@Repository
@Mapper
public interface OrderMapper {
	
	@Insert("insert into onum values()")
	public int putNum();
	
	@Select("select max(onum) from onum")
	public int getNum();

	@Insert("insert into ordering"
			+ "(ordernum, sid, pname, pcount, price, userid, name, address, phone, pay)"
			+ "values(#{ordernum}, #{sid}, #{pname}, #{pcount},#{price},"
			+ "#{userid}, #{name}, #{address}, #{phone}, '카드')")
	public int oSuccess(OrderDTO order);
}
