package practice;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

// MyAnnotation과 같은 사용자 정의 Annotation을 만들고 그 Annotation은 실행시까지 유효 
@Retention(RetentionPolicy.RUNTIME)
public @interface MyAnnotation {
	// 속성 정의 <- 메서드
	int num();
	String msg();
}
