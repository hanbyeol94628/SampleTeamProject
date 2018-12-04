package cf.inseoul.sample.dto;

import cf.inseoul.sample.domain.posts.Files;
import cf.inseoul.sample.domain.posts.Product;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class FilesViewDto {
	
	private String fileName;
	private String fileUrl;
	private Long productId;
	
	@Builder
	public FilesViewDto(String fileName, String fileUrl, Long productId) {
		this.fileName = fileName;
		this.fileUrl = fileUrl;
		this.productId = productId;
	}
	
	public Files toEntity() {
		return Files.builder()
				.fileName(fileName)
				.fileUrl(fileUrl)
				.productId(productId)
				.build();
	}
	
}
