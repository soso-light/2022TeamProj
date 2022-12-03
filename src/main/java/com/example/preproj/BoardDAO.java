package com.example.preproj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    private final String BOARD_INSERT = "insert into RECIPE_DATA (title, userid, cookingTime, cookingTools, ingredients, recipe, likes) values (?, ?, ?, ?, ?, ?, ?)";
    private final String BOARD_UPDATE = "update RECIPE_DATA set title=?, userid=?, cookingTime=?, cookingTools=?, ingredients=?, recipe=?, likes=? where seq=?";
    private final String BOARD_DELETE = "delete from RECIPE_DATA where seq=?";
    private final String BOARD_GET = "select * from RECIPE_DATA where seq=?";
    private final String BOARD_LIST = "select * from RECIPE_DATA order by seq desc";

    public int insertBoard(BoardVO vo){
        return template.update(BOARD_INSERT, new Object[]{vo.getTitle(), vo.getUserid(), vo.getCookingTime(), vo.getCookingTools(), vo.getIngredients(), vo.getRecipe(), vo.getLikes()});
    }

    public int deleteBoard(int id){
        return template.update(BOARD_DELETE, new Object[]{id});
    }

    public int updateBoard(BoardVO vo){
        return template.update(BOARD_UPDATE, new Object[]{vo.getTitle(), vo.getTitle(), vo.getUserid(), vo.getCookingTime(), vo.getCookingTools(), vo.getIngredients(), vo.getRecipe(), vo.getLikes(), vo.getSeq()});
    }

    public BoardVO getBoard(int seq){
        return template.queryForObject(BOARD_GET, new Object[]{seq}, new BeanPropertyRowMapper<BoardVO>(BoardVO.class));
    }

    public List<BoardVO> getBoardList(){
        return template.query(BOARD_LIST, new RowMapper<BoardVO>() {
            public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                BoardVO data = new BoardVO();
                data.setSeq(rs.getInt("seq"));
                data.setTitle(rs.getString("title"));
                data.setUserid(rs.getString("userid"));
                data.setCookingTime(rs.getString("cookingTime"));
                data.setLikes(rs.getInt("likes"));
                data.setRegdate(rs.getDate("regdate"));
                return data;
            }
        });
    }
}
