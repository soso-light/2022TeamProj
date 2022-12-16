package com.example.recipe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Repository
public class RecipeServiceImpl implements RecipeService {

    @Autowired
    RecipeDAO recipeDAO;

    public int insertRecipe(RecipeVO vo) {
        return recipeDAO.insertRecipe(vo);
    }

    public int deleteRecipe(int seq) {
        return recipeDAO.deleteRecipe(seq);
    }

    public int updateRecipe(RecipeVO vo) {
        return recipeDAO.updateRecipe(vo);
    }

    public RecipeVO getRecipe(int seq) {
        return recipeDAO.getRecipe(seq);
    }

    public List<RecipeVO> getRecipeList() {
        return recipeDAO.getRecipeList();
    }
}
