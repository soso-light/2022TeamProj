package com.example.recipe;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RecipeDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertBoard(RecipeVO vo){
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }

    public int deleteBoard(int id){
        int result = sqlSession.delete("Board.deleteBoard", id);
        return result;
    }

    public int updateBoard(RecipeVO vo){
        int result = sqlSession.update("Board.updateBoard", vo);
        return result;
    }

    public RecipeVO getBoard(int seq){
        RecipeVO one = sqlSession.selectOne("Board.getBoard", seq);
        return one;
    }

    public List<RecipeVO> getBoardList(){
        List<RecipeVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }
}
