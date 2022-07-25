package com.example.cloudnativehomework.service;

import com.example.cloudnativehomework.domain.*;
import org.springframework.stereotype.Service;

@Service
public class GreetingService {
    public Object greeting(){
        return new Greeting("Hello");
    }
}
