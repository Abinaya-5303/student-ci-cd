package com.example.student_ci_cd;

import org.springframework.web.bind.annotation.*;
import java.util.*;

@RestController
@RequestMapping("/students")
public class StudentController {

    List<Student> students = new ArrayList<>();

    @PostMapping
    public String addStudent(@RequestBody Student student) {
        students.add(student);
        return "Student added successfully";
    }

    @GetMapping
    public List<Student> getStudents() {
        return students;
    }

    @GetMapping("/{id}")
    public Student getById(@PathVariable int id) {
        return students.stream()
                .filter(s -> s.getId() == id)
                .findFirst()
                .orElse(null);
    }
}