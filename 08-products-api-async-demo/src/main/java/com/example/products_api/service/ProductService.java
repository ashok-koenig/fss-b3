package com.example.products_api.service;

import com.example.products_api.entity.Product;
import com.example.products_api.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.concurrent.CompletableFuture;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;

    @Async
    public CompletableFuture<String> processLongRunningTask(){
        System.out.println("Long Running task started");
        try {
            Thread.sleep(5000);  // Simulate long-running task
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
        return CompletableFuture.completedFuture("Task completed");
    }

    // Common method for create and update
    @Transactional
    public Product saveProduct(Product product){
        return productRepository.save(product);
    }

    public List<Product> getAllProducts(){
        return productRepository.findAll();
    }

    public Optional<Product> findProductById(Long id){
        return productRepository.findById(id);
    }

    @Transactional
    public void deleteProductById(Long id){
        productRepository.deleteById(id);
    }
}
