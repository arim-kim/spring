package practice;
import java.lang.reflect.Method;

public class AnnotationReflectionTest {
	public static void main(String[] args) throws Exception{
		// 사용자 정의 Annotation & Reflection 
		// 일반적 사용 
		UseMyAnnotation uma = new UseMyAnnotation();
		uma.m1();
		
		// Refelction - spring 기반 기술 중 하나 
		// class 의 구조를 들여다볼 수 있음 (ex. method)
		Method m = uma.getClass().getMethod("m1");
		
		// annotation 
		MyAnnotation ma = m.getAnnotation(MyAnnotation.class);
		System.out.println(ma.num());
		System.out.println(ma.msg());
	}
}
