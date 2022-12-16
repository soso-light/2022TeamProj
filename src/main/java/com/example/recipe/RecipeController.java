package com.example.recipe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/recipe")
public class RecipeController {
    @Autowired
    RecipeServiceImpl RecipeService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String recipelist(Model model){
        model.addAttribute("list", RecipeService.getRecipeList());
        return "list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }

    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPostOK(RecipeVO vo){
        if(RecipeService.insertRecipe(vo)==0){
            System.out.println("데이터 추가 실패");
        }else{
            System.out.println("데이터 추가 성공!!!");
        }
        return "redirect:list";
    }

    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        RecipeVO recipeVO = RecipeService.getRecipe(id);
        model.addAttribute("u", recipeVO);
        return "editform";
    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOK(RecipeVO vo){
        if(RecipeService.updateRecipe(vo)==0){
            System.out.println("데이터 추가 실패");
        }else{
            System.out.println("데이터 추가 성공!!!");
        }
        return "redirect:list";
    }

    @RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOK(@PathVariable("id") int id, Model model){
        if(RecipeService.deleteRecipe(id)==0){
            System.out.println("데이터 추가 실패");
        }else{
            System.out.println("데이터 추가 성공!!!");
        }
        return "redirect:../list";
    }
}
