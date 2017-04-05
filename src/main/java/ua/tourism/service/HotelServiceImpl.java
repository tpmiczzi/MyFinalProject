package ua.tourism.service;

import org.springframework.transaction.annotation.Transactional;
import ua.tourism.dao.HotelDao;
import ua.tourism.model.Hotel;

import java.util.List;

public class HotelServiceImpl implements HotelService {
    private HotelDao hotelDao;

    public void setHotelDao(HotelDao hotelDao) {
        this.hotelDao = hotelDao;
    }

    @Override
    @Transactional
    public void addHotel(Hotel hotel) {
        this.hotelDao.addHotel(hotel);
    }

    @Override
    @Transactional
    public void updateHotel(Hotel hotel) {
        this.hotelDao.updateHotel(hotel);
    }

    @Override
    @Transactional
    public void removeHotel(int id) {
        this.hotelDao.removeHotel(id);
    }

    @Override
    @Transactional
    public Hotel getHotelById(int id) {
        return this.hotelDao.getHotelById(id);
    }

    @Override
    @Transactional
    public List<Hotel> listHotel() {
        return this.hotelDao.listHotel();
    }
}
