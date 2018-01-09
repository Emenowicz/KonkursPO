package com.po.konkurs.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "categories")
public class CategoryModel implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String name;

    private String description;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Set<PrizeModel> prizes;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "edition_number")
    private EditionModel edition;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Set<PrizeModel> getPrizes() {
        return prizes;
    }

    public void setPrizes(Set<PrizeModel> prizes) {
        this.prizes = prizes;
    }

    public EditionModel getEdition() {
        return edition;
    }

    public void setEdition(EditionModel edition) {
        this.edition = edition;
    }

}
