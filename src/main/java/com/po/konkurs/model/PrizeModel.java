package com.po.konkurs.model;

import com.po.konkurs.utils.enums.PrizeRank;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "prizes")
public class PrizeModel implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private PrizeRank rank;

    private String value;

    private String title;

    private String description;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private CategoryModel category;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public PrizeRank getRank() {
        return rank;
    }

    public void setRank(PrizeRank rank) {
        this.rank = rank;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public CategoryModel getCategory() {
        return category;
    }

    public void setCategory(CategoryModel category) {
        this.category = category;
    }
}
