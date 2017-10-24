package kobook.person.service;

import kobook.person.dao.PersonDAO;

public class PersonService {

	private static PersonService service = new PersonService();
	private static PersonDAO dao;

	public static PersonService getInstance(){
		dao = PersonDAO.getInstance();
		return service;
	}
	
	public int searchP_idService(String person_email){
		return dao.searchP_id(person_email);
	}
	
}
