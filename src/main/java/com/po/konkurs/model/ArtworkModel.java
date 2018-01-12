package com.po.konkurs.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "artworks")
public class ArtworkModel implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String title;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private CategoryModel category;

    @ManyToOne
    @JoinColumn(name = "edition_number")
    private EditionModel edition;

    @Lob
    private byte[] artworkCopy;

    private boolean qualified;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public CategoryModel getCategory() {
        return category;
    }

    public void setCategory(CategoryModel category) {
        this.category = category;
    }

    public EditionModel getEdition() {
        return edition;
    }

    public void setEdition(EditionModel edition) {
        this.edition = edition;
    }

    public boolean isQualified() {
        return qualified;
    }

    public void setQualified(boolean qualified) {
        this.qualified = qualified;
    }

    public byte[] getArtworkCopy() {
        return artworkCopy;
    }

    public void setArtworkCopy(byte[] artworkCopy) {
        this.artworkCopy = artworkCopy;
    }
}
