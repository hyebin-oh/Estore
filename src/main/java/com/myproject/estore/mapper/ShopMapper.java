package com.myproject.estore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.myproject.estore.dto.ProductDTO;

@Repository
@Mapper
public interface ShopMapper {

	@Select("select * from product where sid=#{sid}")
	public List<ProductDTO> sPList(String sid);
}
