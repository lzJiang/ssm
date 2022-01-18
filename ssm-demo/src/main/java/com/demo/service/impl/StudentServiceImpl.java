package com.demo.service.impl;

import com.demo.dto.Student;
import com.demo.mapper.StudentMapper;
import com.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service(value = "studentService")
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;
    @Override
    public int addStudent(Student student) {
        int num = studentMapper.insertStudent(student);
        return num;
    }

    @Override
    public List<Student> findStudents() {
        return studentMapper.queryAllStudent();
    }

    @Override
    public Student findOneStudent(String name) {
        return studentMapper.selectStudent(name);
    }
}
