package com.demo.controller;

import com.demo.dto.Student;
import com.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private StudentService studentService;

    @RequestMapping("/add")
    public ModelAndView addStudent(Student student) {
        String msg = "";
        ModelAndView mv = new ModelAndView();
        int num = studentService.addStudent(student);
        if (num > 0) {
            msg = student.getName() + "注册成功";
        }else{
            msg = "注册失败";
        }
        mv.addObject("msg",msg);
        mv.setViewName("addresult");
        return mv;
    }

    @RequestMapping("/selectone")
    @ResponseBody
    public ModelAndView selectStudent(String name) {
        ModelAndView mv = new ModelAndView();
        Student student = studentService.findOneStudent(name);
        if (student!=null){
            mv.addObject("stu",student);
        }else{
            mv.addObject("stu", new Student());
            mv.addObject("msg", "未查询到该学生信息");
        }
        mv.setViewName("loginresult");
        return mv;
    }

    @RequestMapping("/selectAll")
    @ResponseBody
    public List<Student> findStudents() {
        return studentService.findStudents();
    }
}
