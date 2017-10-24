package kobook.book.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kobook.book.domain.Book;
import kobook.book.domain.Reply;
import kobook.book.domain.Search;
import kobook.action.*;
import kobook.book.controller.*;
import kobook.book.dao.*;
import kobook.book.mapper.*;
import kobook.book.service.*;


public interface BookMapper {
	int insertBook(Book book);
	public Integer selectBook_id();
	public List<Book> listBook(RowBounds row, Search search);
	public List<Book> locationBook(RowBounds row, Search search);
	public Book selectBook(int book_id);
	public int countBook(Search search);
	public int updateBook(Book book);
	//public int searchBook(Book book);
/*	public int updateHit(int book_id);
	public int updateStep(HashMap<String, Integer> map);
	public Integer selectR_id();
	public int insertReply(Reply reply);
	public List<Reply> listReply(int book_id);
	public int deleteReply(int r_id);
	public int deleteBook(int book_id);*/
}
