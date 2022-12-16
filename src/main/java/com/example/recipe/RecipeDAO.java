package com.example.recipe;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RecipeDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertRecipe(RecipeVO vo){
        int result = sqlSession.insert("Recipe.insertRecipe", vo);
        return result;
    }

    public int deleteRecipe(int id){
        int result = sqlSession.delete("Recipe.deleteRecipe", id);
        return result;
    }

    public int updateRecipe(RecipeVO vo){
        int result = sqlSession.update("Recipe.updateRecipe", vo);
        return result;
    }

    public RecipeVO getRecipe(int seq){
        RecipeVO one = sqlSession.selectOne("Recipe.getRecipe", seq);
        return one;
    }

    public List<RecipeVO> getRecipeList(){
        List<RecipeVO> list = sqlSession.selectList("Recipe.getRecipeList");
        return list;
    }
}
