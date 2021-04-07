package kimmyeonghoe.cloth.admin.question.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimmyeonghoe.cloth.admin.question.dao.map.AdminQuestionMap;
import kimmyeonghoe.cloth.admin.question.domain.AdminQuestion;

@Repository
public class AdminQuestionDaoImpl implements AdminQuestionDao{
	@Autowired private AdminQuestionMap adminQuestionMap;
	
	@Override
	public List<AdminQuestion> selectQuestions() {
		return adminQuestionMap.selectQuestions();
	}
	
	@Override
	public int insertQuestion(AdminQuestion question) {
		return adminQuestionMap.insertQuestion(question);
	}
	
	@Override
	public int updateQuestion(AdminQuestion question) {
		return adminQuestionMap.updateQuestion(question);
	}
	
	@Override
	public int deleteQuestion(int questionNum) {
		return adminQuestionMap.deleteQuestion(questionNum);
	}
	
	@Override
	public AdminQuestion searchQuestion(int questionNum) {
		return adminQuestionMap.searchQuestion(questionNum);
	}
}
