package org.tukorea.aop;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LogAspect {
	protected Log log = LogFactory.getLog(LogAspect.class);
	static String name = "";
	static String type = "";
	
	@Around("execution(* org..controller.*Controller.*(..)) or execution(* org..service.*Impl.*(..)) or execution(* org..persistence.*DAO.*(..))")
	public Object logPrint(ProceedingJoinPoint joinPoint) throws Throwable {
		type = joinPoint.getSignature().getDeclaringTypeName();
		System.out.println("-------------------------------------------------------------------- 실행된 메서드 --------------------------------------------------------------------");
		if (type.indexOf("Controller") > -1) {
			name = "Controller  \t:  ";
		}
		else if (type.indexOf("Service") > -1) {
			name = "ServiceImpl  \t:  ";
		}
		else if (type.indexOf("DAO") > -1) {
			name = "DAO  \t\t:  ";
		}
		log.debug(name + type + "." + joinPoint.getSignature().getName() + "()");
		System.out.println("---------------------------------------------------------------------------------------------------------------------------------------------------");
		return joinPoint.proceed();
	}

}