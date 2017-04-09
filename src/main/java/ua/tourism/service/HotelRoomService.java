package ua.tourism.service;

import ua.tourism.model.HotelRoom;

import java.util.Date;
import java.util.List;

public interface HotelRoomService {
    void addHotelRoom(HotelRoom hotelRoom);

    void updateHotelRoom(HotelRoom hotelRoom);

    void removeHotelRoom(int id);

    HotelRoom getHotelRoomById(int id);

    List<HotelRoom> listHotelRoom(int id);

    public void addDate(HotelRoom hotelRoom, Integer dataFrom);

}
