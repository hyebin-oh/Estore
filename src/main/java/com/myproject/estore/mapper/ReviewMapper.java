package com.myproject.estore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.myproject.estore.dto.ReviewDTO;

@Repository
@Mapper
public interface ReviewMapper {
	@Insert("insert into review(pnum, title, content, email, rate) "
			+ "values(#{pnum}, #{title}, #{content}, #{email}, #{rate})")
	//추가
	public void rInsert(ReviewDTO review);
	//수정
	public void rUpdate(ReviewDTO review);
	//리스트
	public List<ReviewDTO> rList();
	//상세보기
	public ReviewDTO rDetail(int rnum);
	//삭제
	public void rDelete(int rnum);
	//product에 따른 상세보기
	public List<ReviewDTO> rfindByPnum(int pnum);
}
