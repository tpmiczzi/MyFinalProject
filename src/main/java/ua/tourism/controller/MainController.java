package ua.tourism.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ua.tourism.model.HotelRoom;

import java.util.LinkedList;
import java.util.List;

@Controller
public class MainController {
    //temporary information
    List<HotelRoom> hotelRoomList = new LinkedList<>();

    @RequestMapping(value = {"/", "index"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String index(){
        return "/index";
    }

    @RequestMapping(value = "/createHotelRoom", method = RequestMethod.POST)
    public String createHotelRoom(@RequestParam("nameRoom") String nameRoom,
                                  @RequestParam("badInRoom") String badInRoom,
                                  @RequestParam("priceRoom") String priceRoom,
                                  @RequestParam("freeOrBusy") String freeOrBusy,
                                  Model model,
                                  HotelRoom hotelRoom){
        hotelRoom.setNameRoom(nameRoom);
        hotelRoom.setBadInRoom(Integer.parseInt(badInRoom));
        hotelRoom.setPriceRoom(Double.parseDouble(priceRoom));
        if ("true".equals(freeOrBusy)){
            hotelRoom.setFreeOrBusy(true);
        } else {
            hotelRoom.setFreeOrBusy(false);
        }
        hotelRoomList.add(hotelRoom);
        model.addAttribute("hotelRoomList", hotelRoomList);
        return "/index";
    }
}
