package ua.tourism.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.tourism.model.Hotel;
import ua.tourism.model.HotelRoom;
import ua.tourism.model.HotelRoomDto;
import ua.tourism.service.HotelRoomService;
import ua.tourism.service.HotelService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class HotelController {
    private HotelService hotelService;
    private HotelRoomService hotelRoomService;
    private int tmpIdHotel;
    private int tmpIdRoom;
    private Hotel tmpHotel;

    @Autowired(required = true)
    @Qualifier(value = "hotelService")
    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }

    @Autowired(required = true)
    @Qualifier(value = "hotelRoomService")
    public void setHotelRoomService(HotelRoomService hotelRoomService) {
        this.hotelRoomService = hotelRoomService;
    }

    //start page
    @RequestMapping(value = "startpage", method = RequestMethod.GET)
    public String startpage() {
        return "../../index";
    }

    //page with list hotels
    @RequestMapping(value = "hotels", method = RequestMethod.GET)
    public String listHotels(Model model) {
        model.addAttribute("hotel", new Hotel());
        model.addAttribute("listHotels", this.hotelService.listHotel());

        return "hotels";
    }

    //page with list hotels which can change
    @RequestMapping(value = "/hotel/changehotel", method = RequestMethod.GET)
    public String changeHotel(Model model) {
        model.addAttribute("hotel", new Hotel());
        model.addAttribute("listHotels", this.hotelService.listHotel());

        return "changehotel";
    }

    // add hotel
    @RequestMapping(value = "/hotel/add", method = RequestMethod.POST)
    public String addHotel(@ModelAttribute("hotel") Hotel hotel) {
        if (hotel.getId() == 0) {
            this.hotelService.addHotel(hotel);
        } else {
            this.hotelService.updateHotel(hotel);
        }
        return "redirect:/hotel/changehotel";
    }

    // remove hotel
    @RequestMapping("/remove/{id}")
    public String removeHotel(@PathVariable("id") int id) {
        this.hotelService.removeHotel(id);

        return "redirect:/hotel/changehotel";
    }

    //edit hotel
    @RequestMapping("edit/{id}")
    public String editHotel(@PathVariable("id") int id, Model model) {
        model.addAttribute("hotel", this.hotelService.getHotelById(id));
        model.addAttribute("listHotels", this.hotelService.listHotel());

        return "changehotel";
    }

    // open page with data about hotel and room
    @RequestMapping("hoteldata/{id}")
    public String bookData(@PathVariable("id") int id, Model model, @ModelAttribute("hotelRoom") HotelRoom hotelRoom) {
        tmpIdHotel = id;
        model.addAttribute("hotel", this.hotelService.getHotelById(id));
        model.addAttribute("listHotelRoom", this.hotelRoomService.listHotelRoom(id));

        return "hoteldata";
    }

    //view room in hotel for booking
    @RequestMapping(value = "roomBook/{id}")
    public String roomBook(@PathVariable("id") int id, Model model) {
        tmpIdRoom = id;
        model.addAttribute("oneroombook", this.hotelRoomService.getHotelRoomById(id));

        return "roombook";
    }

    // add date from booked
    @RequestMapping(value = "/room/add", method = RequestMethod.POST)
    public String roomAdd(@ModelAttribute("oneroombook") HotelRoomDto hotelRoomDto) {
        HotelRoom hotelRoom = this.hotelRoomService.getHotelRoomById(tmpIdRoom);

        SimpleDateFormat sdt = new SimpleDateFormat("yyyy-MM-dd");
        String bookedFrom = hotelRoomDto.getBookedFrom();
        String bookedTo = hotelRoomDto.getBookedTo();

        try {
            Date parsingDateBookedFrom = sdt.parse(bookedFrom);
            Date parsingDateBookedTo = sdt.parse(bookedTo);

            hotelRoom.setBookedFrom(parsingDateBookedFrom);
            hotelRoom.setBookedTo(parsingDateBookedTo);
        } catch (ParseException e) {
            System.out.println("Exception in parsing" + e);
        }

        this.hotelRoomService.updateHotelRoom(hotelRoom);
        return "redirect:/hoteldata/" + tmpIdHotel;
    }

    //page with list rooms which can change
    @RequestMapping(value = "/room/changeroom/{id}", method = RequestMethod.GET)
    public String changeRoom(@PathVariable("id") int id, Model model) {
        model.addAttribute("oneroom", new HotelRoom());
        model.addAttribute("listRooms", this.hotelRoomService.listHotelRoom(id));

        tmpHotel = this.hotelRoomService.getHotelRoomById(id).getHotel();
        tmpIdRoom = id;

        return "changerooms";
    }

    // add room
    @RequestMapping(value = "/newroom/add", method = RequestMethod.POST)
    public String addRoom(@ModelAttribute("oneroom") HotelRoom hotelRoom) {
        if (hotelRoom.getId() == 0) {
            hotelRoom.setHotel(tmpHotel);
            this.hotelRoomService.addHotelRoom(hotelRoom);
        } else {
            hotelRoom.setHotel(tmpHotel);
            this.hotelRoomService.updateHotelRoom(hotelRoom);
        }
        return "redirect:/room/changeroom/" + tmpIdRoom;
    }

    // remove room
    @RequestMapping("/room/remove/{id}")
    public String removeRoom(@PathVariable("id") int id) {
        this.hotelRoomService.removeHotelRoom(id);

        return "redirect:/room/changeroom/" + tmpIdRoom;
    }

    //edit room
    @RequestMapping("/room/edit/{id}")
    public String editRoom(@PathVariable("id") int id, Model model) {
        model.addAttribute("oneroom", this.hotelRoomService.getHotelRoomById(id));

        model.addAttribute("listRooms", this.hotelRoomService.listHotelRoom(tmpIdHotel));

        return "changerooms";
    }

}
