package kimmyeonghoe.cloth.common;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class MyLogger {
	private final Logger logger;
	
	public MyLogger() {
		logger = LogManager.getLogger(MyLogger.class);
	}
	@Around("execution(* kimmyeonghoe.cloth.user.service..*.*(..))")
	public Object log(ProceedingJoinPoint jp) throws Throwable {
		String methodName = jp.getSignature().toShortString();
		try {
			logger.info(methodName + "is start");
			Object obj = jp.proceed();
			return obj;
		}finally{
			logger.info(methodName + "is finished");
		}
	}
}
