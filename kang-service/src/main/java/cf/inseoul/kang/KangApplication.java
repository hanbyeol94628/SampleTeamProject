package cf.inseoul.kang;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class KangApplication {

	public static void main(String[] args) {
		SpringApplication.run(KangApplication.class, args);
	}
}
