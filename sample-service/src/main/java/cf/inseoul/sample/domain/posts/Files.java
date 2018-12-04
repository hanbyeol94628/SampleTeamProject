package cf.inseoul.sample.domain.posts;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@Entity
public class Files {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private Long productId;
	private String fileName;
	private String fileUrl;
	
	@Builder
	public Files(Long id, Long productId, String fileName, String image, Long price, String fileUrl) {
		this.id = id;
		this.productId = productId;
		this.fileName = fileName;
		this.fileUrl = fileUrl;
	}

	public Files toEntity() {
		return Files.builder()
				.id(id)
				.fileName(fileName)
				.fileUrl(fileUrl)
				.productId(productId)
				.build();
	}
}
