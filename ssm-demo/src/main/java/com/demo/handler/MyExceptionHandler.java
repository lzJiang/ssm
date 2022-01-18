package com.demo.handler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class MyExceptionHandler {
    @ExceptionHandler
    public ModelAndView doException(Exception ex){
        ModelAndView mv = new ModelAndView();
        mv.addObject("msg","发生异常：");
        mv.addObject("ex",ex);
        mv.setViewName("exception");
        return mv;
    }
}
