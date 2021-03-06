package com.po.konkurs.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.AssertTrue;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "editions")
public class EditionModel implements Serializable {
    @Id
    private int number;

    @Transient
    private boolean active;

    @PostLoad
    private void deriveAttributes() {
        Date currentDate = new Date();
        setActive(currentDate.after(startDate) && currentDate.before(endDate));
    }

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date startDate;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date endDate;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date signingArtworksEndDate;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date firstStepEndDate;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date exhibitionDate;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "edition")
    private Set<CategoryModel> categories;

    @AssertTrue
    private boolean isValid() {
        return startDate.before(endDate) && endDate.after(exhibitionDate) && signingArtworksEndDate.after(startDate) && firstStepEndDate.after(signingArtworksEndDate) && exhibitionDate.after(firstStepEndDate);
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Date getSigningArtworksEndDate() {
        return signingArtworksEndDate;
    }

    public void setSigningArtworksEndDate(Date signingArtworksEndDate) {
        this.signingArtworksEndDate = signingArtworksEndDate;
    }

    public Date getFirstStepEndDate() {
        return firstStepEndDate;
    }

    public void setFirstStepEndDate(Date firstStepEndDate) {
        this.firstStepEndDate = firstStepEndDate;
    }

    public Date getExhibitionDate() {
        return exhibitionDate;
    }

    public void setExhibitionDate(Date exhibitionDate) {
        this.exhibitionDate = exhibitionDate;
    }

    public Set<CategoryModel> getCategories() {
        return categories;
    }

    public void setCategories(Set<CategoryModel> categories) {
        this.categories = categories;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
