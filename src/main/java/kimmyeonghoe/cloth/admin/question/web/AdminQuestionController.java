package kimmyeonghoe.cloth.admin.question.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kimmyeonghoe.cloth.admin.question.domain.AdminQuestion;
import kimmyeonghoe.cloth.admin.question.service.AdminQuestionService;

@Controller
@RequestMapping("admin/question")
public class AdminQuestionController{
	@Autowired private AdminQuestionService questionService;
	
	@RequestMapping("/list")
	public String getListAddr() {
		return "admin/question/list";
	}
	
	@ResponseBody
	@PostMapping("/list")
	public List<AdminQuestion> getList() {
		return questionService.getQuestions();
	}
	
	@PostMapping("/add")
	public boolean addQuestion(@RequestBody AdminQuestion question) {
		return questionService.addQuestion(question);
	}
	
	@PutMapping("/fix")
	public boolean fixQuestion(@RequestBody AdminQuestion question) {
		return questionService.fixQuestion(question);
	}
	
	@DeleteMapping("/del/{questionNum}")
	public boolean delQuestion(@PathVariable int questionNum) {
		return questionService.delQuestion(questionNum);
	}
}
