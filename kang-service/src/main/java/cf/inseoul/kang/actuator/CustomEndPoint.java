package cf.inseoul.kang.actuator;

import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author : kang
 * @Date : 2018. 11. 30.
 * @Description :
 */
@Component
public class CustomEndPoint {
	public String getId() {
		return "customEndpoint";
	}

	public boolean isEnabled() {
		return true;
	}

	public boolean isSensitive() {
		return true;
	}

	public List<String> invoke() {
		// Custom logic to build the output
		List<String> messages = new ArrayList<String>();
		messages.add("This is message 1");
		messages.add("This is message 2");
		return messages;
	}
}
