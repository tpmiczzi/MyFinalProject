package ua.tourism.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "HotelRoom")
public class HotelRoom {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @OneToOne
    @JoinColumn(name = "hotelid")
    private Hotel hotel;

    @Column(name = "nameroom")
    private String nameRoom;

    @Column(name = "amountbed")
    private int amountBed;

    @Column(name = "price")
    private int price;

    @Column(name = "bookedfrom")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date bookedFrom;

    @Column(name = "bookedto")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date bookedTo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public String getNameRoom() {
        return nameRoom;
    }

    public void setNameRoom(String nameRoom) {
        this.nameRoom = nameRoom;
    }

    public int getAmountBed() {
        return amountBed;
    }

    public void setAmountBed(int amountBed) {
        this.amountBed = amountBed;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getBookedFrom() {
        return bookedFrom;
    }

    public void setBookedFrom(Date bookedFrom) {
        this.bookedFrom = bookedFrom;
    }

    public Date getBookedTo() {
        return bookedTo;
    }

    public void setBookedTo(Date bookedTo) {
        this.bookedTo = bookedTo;
    }

    @Override
    public String toString() {
        return "HotelRoom{" +
                "id=" + id +
                ", hotel=" + hotel +
                ", nameRoom='" + nameRoom + '\'' +
                ", amountBed=" + amountBed +
                ", price=" + price +
                ", bookedFrom=" + bookedFrom +
                ", bookedTo=" + bookedTo +
                '}';
    }

    //    public int getId() {
//        return id;
//    }
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public Hotel getHotelId() {
//        return hotel;
//    }
//
//    public void setHotelId(Hotel hotelId) {
//        this.hotel = hotel;
//    }
//
//    public String getNameRoom() {
//        return nameRoom;
//    }
//
//    public void setNameRoom(String nameRoom) {
//        this.nameRoom = nameRoom;
//    }
//
//    public int getAmountBed() {
//        return amountBed;
//    }
//
//    public void setAmountBed(int amountBed) {
//        this.amountBed = amountBed;
//    }
//
//    public int getPrice() {
//        return price;
//    }
//
//    public void setPrice(int price) {
//        this.price = price;
//    }
//
//    public Date getBookedFrom() {
//        return bookedFrom;
//    }
//
//    public void setBookedFrom(Date bookedFrom) {
//        this.bookedFrom = bookedFrom;
//    }
//
//    public Date getBookedTo() {
//        return bookedTo;
//    }
//
//    public void setBookedTo(Date bookedTo) {
//        this.bookedTo = bookedTo;
//    }
//
//    @Override
//    public String toString() {
//        return "HotelRoom{" +
//                "id=" + id +
//                ", hotelId=" + hotel +
//                ", nameRoom='" + nameRoom + '\'' +
//                ", amountBed=" + amountBed +
//                ", price=" + price +
//                ", bookedFrom=" + bookedFrom +
//                ", bookedTo=" + bookedTo +
//                '}';
//    }
}
