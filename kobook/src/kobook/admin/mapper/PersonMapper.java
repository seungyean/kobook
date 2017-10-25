package kobook.admin.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kobook.admin.domain.Board;
import kobook.admin.domain.Search;
import kobook.admin.domain.Person;

public interface PersonMapper {
	
	public Integer searchP_id(String person_email);

	public List<Person> listPerson(RowBounds row, Search search);
	Person detailPerson(int person_id);
	int deletePerson(int person_id);
	int gradeupdatePerson(Person person);
	int kindupdatePerson(Person person);
	
	int insertBoardAdmin(Board board);

	int countPerson(Search search);
	public Integer selectP_id();
	public Person selectPerson(int person_id);
	public List<Person> blackPerson();
	
}
