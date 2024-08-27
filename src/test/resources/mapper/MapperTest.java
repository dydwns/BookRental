

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class MapperTest {
	@DisplayName("�⺻ �����ڸ� ������ ��� ���ε��� ���������� �̷������ �ʴ´�.")
	@Test
	void givenNoArgsBinding_isNull() {
		final int expected = 2;

		List<MemberDto> dtoList = MemberMapper.findAll();

		SoftAssertions.assertSoftly(softly -> {
			softly.assertThat(dtoList).hasSize(expected);
			softly.assertThat(dtoList.get(0)).isNull();
			softly.assertThat(dtoList.get(1)).isNull();
		});
	}

}
