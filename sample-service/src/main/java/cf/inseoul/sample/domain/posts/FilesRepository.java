package cf.inseoul.sample.domain.posts;

import org.springframework.data.jpa.repository.JpaRepository;

import cf.inseoul.sample.dto.FilesSaveDto;

public interface FilesRepository extends JpaRepository<Files, Long>{
	
	Files findByProductId (Long id) throws Exception;
	
	void deleteByProductId (Long id) throws Exception;
}
