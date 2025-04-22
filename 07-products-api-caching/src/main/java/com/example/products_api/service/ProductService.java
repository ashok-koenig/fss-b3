package com.example.products_api.service;

import com.example.products_api.entity.Product;
import com.example.products_api.repository.ProductRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;

    // Common method for create and update
    @CacheEvict(value = "products", allEntries = true)
    @Transactional
    public Product saveProduct(Product product){
        return productRepository.save(product);
    }

    @Cacheable(value = "products")
    public List<Product> getAllProducts(){
        return productRepository.findAll();
    }

    public Optional<Product> findProductById(Long id){
        return productRepository.findById(id);
    }

    @CacheEvict(value = "products", allEntries = true)
    @Transactional
    public void deleteProductById(Long id){
        productRepository.deleteById(id);
    }
}
