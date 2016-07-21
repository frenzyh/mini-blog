package com.newer.dao;

import java.util.List;
public interface BlogDao {

    public int insert(Blog blog);

    public int update(Blog blog);

    public int delete(int id);

    public Blog getById(int id);

    public Blog getByTitle(String title);

    public List<Blog> getByCategory(String category);

    public List<Blog> getAll();
}
