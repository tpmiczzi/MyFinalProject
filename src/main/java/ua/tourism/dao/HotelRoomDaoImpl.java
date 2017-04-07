package ua.tourism.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ua.tourism.model.HotelRoom;

import java.util.Date;
import java.util.List;

public class HotelRoomDaoImpl implements HotelRoomDao {
    private static final Logger logger = LoggerFactory.getLogger(HotelDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addHotelRoom(HotelRoom hotelRoom) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(hotelRoom);
        logger.info("Hotel room successfully SAVED. Hotel room details: " + hotelRoom);
    }

    @Override
    public void updateHotelRoom(HotelRoom hotelRoom) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(hotelRoom);
        logger.info("Hotel room successfully UPDATE. Hotel room details: " + hotelRoom);
    }

    @Override
    public void removeHotelRoom(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        HotelRoom hotelRoom = (HotelRoom) session.load(HotelRoom.class, new Integer(id));
        if (hotelRoom != null) {
            session.delete(hotelRoom);
        }
        logger.info("Hotel room successfully DELETE. Hotel room details: " + hotelRoom);
    }

    @Override
    public HotelRoom getHotelRoomById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        HotelRoom hotelRoom = (HotelRoom) session.load(HotelRoom.class, new Integer(id));
        logger.info("Hotel room successfully LOADED. Hotel room details: " + hotelRoom);

        return hotelRoom;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<HotelRoom> listHotelRoom(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        List<HotelRoom> hotelRoomsList = session.createQuery("from HotelRoom WHERE hotelid = :hotelid").setInteger("hotelid", id).list();

        for (HotelRoom hotelRoom: hotelRoomsList){
            logger.info("Hotel room list: " + hotelRoom);
        }

        return hotelRoomsList;
    }

    @Override
    public void addDate(HotelRoom hotelRoom, Date date) {
        Session session = this.sessionFactory.getCurrentSession();
        hotelRoom.setBookedFrom(date);
        session.update(hotelRoom);
        logger.info("Hotel room successfully UPDATE with new DATE. Hotel room details: " + hotelRoom);
    }
}
