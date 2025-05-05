package com.example.products_api.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
//    @Column(name = "title")
    String title;

    String category;

    Double price;

    Integer stock;

    Boolean paymentSuccess;

    // Entity class should have default constructor, getter/setter methods for all fields

    public Product() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Boolean getPaymentSuccess() {
        return paymentSuccess;
    }

    public void setPaymentSuccess(Boolean paymentSuccess) {
        this.paymentSuccess = paymentSuccess;
    }
}
