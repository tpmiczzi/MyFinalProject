package ua.tourism.dao;

import ua.tourism.model.HotelRoom;

import java.util.Date;
import java.util.List;

public interface HotelRoomDao {
    public void addHotelRoom(HotelRoom hotelRoom);

    public void updateHotelRoom(HotelRoom hotelRoom);

    public void removeHotelRoom(int id);

    HotelRoom getHotelRoomById(int id);

    List<HotelRoom> listHotelRoom(int id);

    public void addDate(HotelRoom hotelRoom);
}

