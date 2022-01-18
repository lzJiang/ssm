package com.demo.service;

import com.demo.dto.Student;

import java.util.List;

public interface StudentService {
    int addStudent(Student student);
    List<Student> findStudents();
    Student findOneStudent(String name);
}
