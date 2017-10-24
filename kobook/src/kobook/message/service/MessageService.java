package kobook.message.service;

import kobook.message.dao.MessageDAO;
import kobook.message.domain.Message;
import kobook.message.service.MessageService;

public class MessageService {

	private static MessageService service = new MessageService();
	private static MessageDAO dao;
	
	public static MessageService getInstance(){
		dao = MessageDAO.getInstance();
		return service;
	}
	
	public int sendMessageService(Message message){
		message.setMessage_id(dao.selectM_id() + 1);
		return dao.sendMessage(message);
	}
	
}
