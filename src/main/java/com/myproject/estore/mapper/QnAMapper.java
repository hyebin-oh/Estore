package com.myproject.estore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.myproject.estore.dto.QnADTO;

@Repository
@Mapper
public interface QnAMapper {
	@Insert("insert into qna(pnum, title, content, email, password) "
			+ "values(#{pnum}, #{title}, #{content}, #{email}, #{password})")
	//추가
	public void qInsert(QnADTO qna);
	//수정
	public void qUpdate(QnADTO qna);
	//리스트
	public List<QnADTO> qList();
	//상세보기
	public QnADTO qDetail(int qnum);
	//삭제
	public void qDelete(int qnum);
	//product에 따른 상세보기
	public List<QnADTO> qfindByPnum(int pnum);
	//댓글 추가
	public void ReplayCnt(@Param("qnum") int qnum, @Param("cnt") int cnt);
}
