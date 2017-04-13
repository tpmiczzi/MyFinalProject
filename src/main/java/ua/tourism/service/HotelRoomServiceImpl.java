package ua.tourism.service;

import org.springframework.transaction.annotation.Transactional;
import ua.tourism.dao.HotelRoomDao;
import ua.tourism.model.HotelRoom;

import java.util.Date;
import java.util.List;

public class HotelRoomServiceImpl implements HotelRoomService {
    private HotelRoomDao hotelRoomDao;

    public void setHotelRoomDao(HotelRoomDao hotelRoomDao) {
        this.hotelRoomDao = hotelRoomDao;
    }

    @Override
    @Transactional
    public void addHotelRoom(HotelRoom hotelRoom) {
        this.hotelRoomDao.addHotelRoom(hotelRoom);
    }

    @Override
    @Transactional
    public void updateHotelRoom(HotelRoom hotelRoom) {
        this.hotelRoomDao.updateHotelRoom(hotelRoom);
    }

    @Override
    @Transactional
    public void removeHotelRoom(int id) {
        this.hotelRoomDao.removeHotelRoom(id);
    }

    @Override
    @Transactional
    public HotelRoom getHotelRoomById(int id) {
        return this.hotelRoomDao.getHotelRoomById(id);
    }

    @Override
    @Transactional
    public List<HotelRoom> listHotelRoom(int id) {
        return this.hotelRoomDao.listHotelRoom(id);
    }

    @Override
    @Transactional
    public void addDate(HotelRoom hotelRoom) {
        this.hotelRoomDao.addDate(hotelRoom);
    }
}
