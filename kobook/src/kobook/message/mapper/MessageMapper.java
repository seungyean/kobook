package kobook.message.mapper;

import kobook.message.domain.Message;

public interface MessageMapper {

	public Integer selectM_id();
	public int sendMessage(Message message);
	
}
