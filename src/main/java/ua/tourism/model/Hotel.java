package ua.tourism.model;

import javax.persistence.*;

@Entity
@Table(name = "Hotel")
public class Hotel {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "namehotel")
    private String nameHotel;

    @Column(name = "countryhotel")
    private String countryHotel;

    @Column(name = "starshotel")
    private int starsHotel;

    @Column(name = "amountrooms")
    private int amountRooms;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameHotel() {
        return nameHotel;
    }

    public void setNameHotel(String nameHotel) {
        this.nameHotel = nameHotel;
    }

    public String getCountryHotel() {
        return countryHotel;
    }

    public void setCountryHotel(String countryHotel) {
        this.countryHotel = countryHotel;
    }

    public int getStarsHotel() {
        return starsHotel;
    }

    public void setStarsHotel(int starsHotel) {
        this.starsHotel = starsHotel;
    }

    public int getAmountRooms() {
        return amountRooms;
    }

    public void setAmountRooms(int amountRooms) {
        this.amountRooms = amountRooms;
    }

    @Override
    public String toString() {
        return "Hotel{" +
                "id=" + id +
                ", nameHotel='" + nameHotel + '\'' +
                ", countryHotel='" + countryHotel + '\'' +
                ", starsHotel=" + starsHotel +
                ", amountRooms=" + amountRooms +
                '}';
    }
}
