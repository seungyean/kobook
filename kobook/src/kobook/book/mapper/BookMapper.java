package kobook.book.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kobook.book.domain.Book;
import kobook.book.domain.Search;

public interface BookMapper {
	int insertBook(Book book);
	   public Integer selectBook_id();
	   public List<Book> listBook(RowBounds row, Search search);
	   public List<Book> locationBook(RowBounds row, Search search);
	   public Book selectBook(int book_id);
	   public int countBook(Search search);
	   public int updateBook(Book book);
}
