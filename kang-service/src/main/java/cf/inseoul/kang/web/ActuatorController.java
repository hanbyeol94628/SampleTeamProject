package cf.inseoul.kang.web;

import cf.inseoul.kang.actuator.CustomEndPoint;
import cf.inseoul.kang.actuator.HealthCheck;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.health.Health;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by kang
 * Date : 2018. 11. 30.
 * Description :
 */
@RestController
public class ActuatorController {

	private final HealthCheck healthCheck;
	private final CustomEndPoint customEndPoint;

	@Autowired
	public ActuatorController(HealthCheck healthCheck, CustomEndPoint customEndPoint) {
		this.healthCheck = healthCheck;
		this.customEndPoint = customEndPoint;
	}


	@RequestMapping("/healthInfo")
	public Health healthInfo() {
		return healthCheck.health();
	}

	@GetMapping("customEndPoint")
	public List<String> custom() {
		return customEndPoint.invoke();
	}
}
