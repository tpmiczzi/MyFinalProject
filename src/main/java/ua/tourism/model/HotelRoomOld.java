package ua.tourism.model;

public class HotelRoomOld {
    private Integer id;
    private String nameRoom;
    private Integer badInRoom;
    private Double priceRoom;
    private Boolean freeOrBusy;

    public HotelRoomOld() {
    }

    public Integer getId() {
        return id;
    }

    public String getNameRoom() {
        return nameRoom;
    }

    public Integer getBadInRoom() {
        return badInRoom;
    }

    public Double getPriceRoom() {
        return priceRoom;
    }

    public Boolean getFreeOrBusy() {
        return freeOrBusy;
    }

    public void setNameRoom(String nameRoom) {
        this.nameRoom = nameRoom;
    }

    public void setBadInRoom(Integer badInRoom) {
        this.badInRoom = badInRoom;
    }

    public void setPriceRoom(Double priceRoom) {
        this.priceRoom = priceRoom;
    }

    public void setFreeOrBusy(Boolean freeOrBusy) {
        this.freeOrBusy = freeOrBusy;
    }

    @Override
    public String toString() {
        return "HotelRoomOld{" +
                "id=" + id +
                ", nameRoom='" + nameRoom + '\'' +
                ", badInRoom=" + badInRoom +
                ", priceRoom=" + priceRoom +
                ", freeOrBusy=" + freeOrBusy +
                '}';
    }
}
