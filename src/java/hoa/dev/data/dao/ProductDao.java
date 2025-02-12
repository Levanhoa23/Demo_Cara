package hoa.dev.data.dao;

import java.util.List;

import hoa.dev.data.model.Product;

public interface ProductDao {
    public boolean insert(Product product);
    
    public boolean update(Product product);
    
    public boolean delete(int id);
    
    public Product find(int id);
    
    public List<Product> findAll();
    
    public List<Product> hot(int limit);
    
    public List<Product> news(int limit);

}
