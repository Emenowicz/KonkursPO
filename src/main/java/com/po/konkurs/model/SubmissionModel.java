package com.po.konkurs.model;

import javax.persistence.*;
import java.io.File;
import java.io.Serializable;

@Entity
@Table(name = "submissions")
public class SubmissionModel implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private File paymentApproval;

    @OneToOne
    @MapsId
    private ArtworkModel artwork;

    @ManyToOne
    @JoinColumn(name = "author_id")
    private UserModel author;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public File getPaymentApproval() {
        return paymentApproval;
    }

    public void setPaymentApproval(File paymentApproval) {
        this.paymentApproval = paymentApproval;
    }

    public ArtworkModel getArtwork() {
        return artwork;
    }

    public void setArtwork(ArtworkModel artwork) {
        this.artwork = artwork;
    }

    public UserModel getAuthor() {
        return author;
    }

    public void setAuthor(UserModel author) {
        this.author = author;
    }
}
