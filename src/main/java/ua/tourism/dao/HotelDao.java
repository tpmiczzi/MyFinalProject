package ua.tourism.dao;

import ua.tourism.model.Hotel;

import java.util.List;

public interface HotelDao {
    void addHotel(Hotel hotel);

    void updateHotel(Hotel hotel);

    void removeHotel(int id);

    Hotel getHotelById(int id);

    List<Hotel> listHotel();
}
