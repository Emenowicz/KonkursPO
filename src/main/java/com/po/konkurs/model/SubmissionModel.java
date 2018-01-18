package com.po.konkurs.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "submissions")
public class SubmissionModel implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Lob
    private byte[] paymentApproval;

    @OneToOne(cascade = CascadeType.ALL)
    @MapsId
    private ArtworkModel artwork;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "author_id")
    private UserModel author;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public byte[] getPaymentApproval() {
        return paymentApproval;
    }

    public void setPaymentApproval(byte[] paymentApproval) {
        this.paymentApproval = paymentApproval;
    }
}
