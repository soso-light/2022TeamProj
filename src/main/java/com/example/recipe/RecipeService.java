package com.example.recipe;

import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface RecipeService {
    public int insertRecipe(RecipeVO vo);
    public int deleteRecipe(int seq);
    public int updateRecipe(RecipeVO vo);
    public RecipeVO getRecipe(int seq);
    public List<RecipeVO> getRecipeList();
}
