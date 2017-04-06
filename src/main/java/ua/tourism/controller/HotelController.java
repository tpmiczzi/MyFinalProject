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
import ua.tourism.service.HotelRoomService;
import ua.tourism.service.HotelService;

@Controller
public class HotelController {
    private HotelService hotelService;
    private HotelRoomService hotelRoomService;

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
    public String startpage(){
        return "../../index";
    }

    //page with list hotels
    @RequestMapping(value = "hotels", method = RequestMethod.GET)
    public String listHotels(Model model){
        model.addAttribute("hotel", new Hotel());
        model.addAttribute("listHotels", this.hotelService.listHotel());

        return "hotels";
    }

    //page with list hotels which can change
    @RequestMapping(value = "/hotel/changehotel", method = RequestMethod.GET)
    public String changeHotel(Model model){
        model.addAttribute("hotel", new Hotel());
        model.addAttribute("listHotels", this.hotelService.listHotel());

        return "changehotel";
    }

    // add hotel
    @RequestMapping(value = "/hotel/add", method = RequestMethod.POST)
    public String addHotel(@ModelAttribute("hotel") Hotel hotel){
        if (hotel.getId() == 0){
            this.hotelService.addHotel(hotel);
        }else {
            this.hotelService.updateHotel(hotel);
        }
        return "redirect:/hotel/changehotel";
    }

    // remove hotel
    @RequestMapping("/remove/{id}")
    public String removeHotel(@PathVariable("id") int id){
        this.hotelService.removeHotel(id);

        return "redirect:/hotel/changehotel";
    }

    //edit hotel
    @RequestMapping("edit/{id}")
    public String editHotel(@PathVariable("id") int id, Model model){
        model.addAttribute("hotel", this.hotelService.getHotelById(id));
        model.addAttribute("listHotels", this.hotelService.listHotel());

        return "changehotel";
    }

    // open page with data about hotel and room
    @RequestMapping("hoteldata/{id}")
    public String bookData(@PathVariable("id") int id, Model model){
        model.addAttribute("hotel", this.hotelService.getHotelById(id));
        model.addAttribute("hotelRoom", this.hotelRoomService.listHotelRoom(id));

        return "hoteldata";
    }
}
