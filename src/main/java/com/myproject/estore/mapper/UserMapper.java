package com.myproject.estore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.myproject.estore.dto.OrderDTO;

@Repository
@Mapper
public interface UserMapper {

	@Select("select * from ordering where userid=#{uid}")
	public List<OrderDTO> uOList(String uid);
}
