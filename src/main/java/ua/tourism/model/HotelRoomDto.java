package ua.tourism.model;

import javax.persistence.*;
import java.util.Date;

public class HotelRoomDto {
    private int id;

    private String nameRoom;

    private int amountBed;

    private int price;

    private String bookedFrom;

    private String bookedTo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getBookedFrom() {
        return bookedFrom;
    }

    public void setBookedFrom(String bookedFrom) {
        this.bookedFrom = bookedFrom;
    }

    public String getBookedTo() {
        return bookedTo;
    }

    public void setBookedTo(String bookedTo) {
        this.bookedTo = bookedTo;
    }

    @Override
    public String toString() {
        return "HotelRoom{" +
                "id=" + id +
                ", nameRoom='" + nameRoom + '\'' +
                ", amountBed=" + amountBed +
                ", price=" + price +
                ", bookedFrom=" + bookedFrom +
                ", bookedTo=" + bookedTo +
                '}';
    }
}
