package com.javakc.ssm.logger.aspect;

import com.javakc.ssm.logger.annotation.LoggerAdvice;
import com.javakc.ssm.logger.entity.LoggerEntity;
import com.javakc.ssm.logger.service.LoggerService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.sql.Timestamp;

@Aspect
public class LoggerAspect {

    @Autowired
    private LoggerService loggerService;

    @Pointcut("execution(* com.javakc.ssm.*.controller.*.*(..))")
    public void loggerPointcut() { }

    @AfterReturning("loggerPointcut()")
    public void afterReturning(JoinPoint joinPoint) {
        //获取request，
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        //通过aop切面JoinPoint类对象，获取该类，或者该方法，或者该方法的参数
        Class<? extends Object> clazz =  joinPoint.getTarget().getClass();
        String controllerName = clazz.getName();
        if(clazz.isAnnotationPresent(LoggerAdvice.class)){
            //当前controller操作的名称
            controllerName = clazz.getAnnotation(LoggerAdvice.class).operations();
        }
        // 获取当前方法
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();
        // clazz类下的所有方法
        Method[] methods = clazz.getDeclaredMethods();
        String methodName = "";
        for (Method m : methods) {
            if(m.equals(method)){
                methodName = m.getName();
                if(m.isAnnotationPresent(LoggerAdvice.class)){
                    methodName = m.getAnnotation(LoggerAdvice.class).operations();
                }
            }
        }

        LoggerEntity entity = new LoggerEntity();
        entity.setType(1);
        entity.setController(controllerName);
        entity.setMethod(methodName);
        entity.setRemoteAddr(request.getRemoteAddr());
        entity.setCreateTime(new Timestamp(System.currentTimeMillis()));
        entity.setUserId(0);

        loggerService.insert(entity);
    }

    @AfterThrowing(pointcut = "loggerPointcut()", throwing = "error")
    public void AfterThrowing(JoinPoint joinPoint, Throwable error) {
        //获取request，
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        //通过aop切面JoinPoint类对象，获取该类，或者该方法，或者该方法的参数
        Class<? extends Object> clazz =  joinPoint.getTarget().getClass();
        String controllerName = clazz.getName();
        if(clazz.isAnnotationPresent(LoggerAdvice.class)){
            //当前controller操作的名称
            controllerName = clazz.getAnnotation(LoggerAdvice.class).operations();
        }
        // 获取当前方法
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();
        // clazz类下的所有方法
        Method[] methods = clazz.getDeclaredMethods();
        String methodName = "";
        for (Method m : methods) {
            if(m.equals(method)){
                methodName = m.getName();
                if(m.isAnnotationPresent(LoggerAdvice.class)){
                    methodName = m.getAnnotation(LoggerAdvice.class).operations();
                }
            }
        }

        LoggerEntity entity = new LoggerEntity();
        entity.setType(2);
        entity.setController(controllerName);
        entity.setMethod(methodName);
        entity.setRemoteAddr(request.getRemoteAddr());
        entity.setCreateTime(new Timestamp(System.currentTimeMillis()));
        entity.setUserId(0);
        entity.setError(error.getCause().toString());
        loggerService.insert(entity);
    }

}
