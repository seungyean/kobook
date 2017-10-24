package kobook.admin.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kobook.admin.domain.Board;
import kobook.admin.domain.Search;

public interface BoardMapper {

	int insertBoard(Board board);
	public List<Board> listBoard(RowBounds row, Search search);
	public Integer selectB_id();	
	public int increaseHit(int board_id);
	public Board selectBoard(int board_id);
	int countBoard(Search search);
	public Board detailNoti(int board_id);
	public int deleteNoti(int board_id);
	public int updateNoti(int board_id);
	
}
