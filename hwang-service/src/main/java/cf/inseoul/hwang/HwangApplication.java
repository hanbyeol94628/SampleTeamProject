package cf.inseoul.hwang;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class HwangApplication {

	public static void main(String[] args) {
		SpringApplication.run(HwangApplication.class, args);
	}
}
