package ua.tourism.service;

import ua.tourism.model.Hotel;

import java.util.List;

public interface HotelService {
    void addHotel(Hotel hotel);

    void updateHotel(Hotel hotel);

    void removeHotel(int id);

    Hotel getHotelById(int id);

    List<Hotel> listHotel();
}
