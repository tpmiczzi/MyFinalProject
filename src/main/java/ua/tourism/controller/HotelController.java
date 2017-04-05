package ua.tourism.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.tourism.model.Hotel;
import ua.tourism.service.HotelService;

@Controller
public class HotelController {
    private HotelService hotelService;

    @Autowired(required = true)
    @Qualifier(value = "hotelService")
    public void setHotelService(HotelService hotelService) {
        this.hotelService = hotelService;
    }

    @RequestMapping(value = "hotels", method = RequestMethod.GET)
    public String listHotels(Model model){
//        model.addAttribute("hotel", new Hotel());
        model.addAttribute("listHotels", this.hotelService.listHotel());

        return "hotels";
    }
}
