package cf.inseoul.kang.actuator;

import org.springframework.boot.actuate.health.Health;
import org.springframework.boot.actuate.health.HealthIndicator;
import org.springframework.stereotype.Component;

/**
 * Created by kang
 * Date : 2018. 11. 30.
 * Description :
 */
@Component
public class HealthCheck implements HealthIndicator {
	@Override
	public Health health() {
		boolean isCheck = check();
		if (isCheck) {

			// 에러 코드 유형 정의
			int errorCode = 404;
			return Health.down().withDetail("Error Code", errorCode).build();
		}
		return Health.up().build();
	}

	public boolean check() {
		// 어플리케이션 체크 로직
		return false;
	}
}
