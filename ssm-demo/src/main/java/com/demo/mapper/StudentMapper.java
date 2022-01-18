package com.demo.mapper;

import com.demo.dto.Student;

import java.util.List;

public interface StudentMapper {
    int insertStudent(Student student);
    Student selectStudent(String name);
    List<Student> queryAllStudent();
}
