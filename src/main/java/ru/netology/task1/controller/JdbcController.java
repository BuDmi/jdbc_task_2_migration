package ru.netology.task1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.task1.repository.JdbcRepository;

import java.util.List;

@RestController
@RequestMapping("/")
public class JdbcController {

    @Autowired
    private JdbcRepository jdbcRepository;

    @GetMapping("products/fetch-product")
    public List<String> getProductName(@RequestParam String name) {
        return jdbcRepository.getProductName(name);
    }
}
