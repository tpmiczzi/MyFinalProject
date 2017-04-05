//package ua.tourism.controller;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import ua.tourism.model.HotelRoomOld;
//
//import java.util.LinkedList;
//import java.util.List;
//
//@Controller
//public class MainControllerOld {
//    //temporary information
//    List<HotelRoomOld> hotelRoomOldList = new LinkedList<>();
//
//    @RequestMapping(value = {"/", "index"}, method = {RequestMethod.GET, RequestMethod.POST})
//    public String index(){
//        return "/index";
//    }
//
//    @RequestMapping(value = "/createHotelRoom", method = RequestMethod.POST)
//    public String createHotelRoom(@RequestParam("nameRoom") String nameRoom,
//                                  @RequestParam("badInRoom") String badInRoom,
//                                  @RequestParam("priceRoom") String priceRoom,
//                                  @RequestParam("freeOrBusy") String freeOrBusy,
//                                  Model model,
//                                  HotelRoomOld hotelRoomOld){
//        hotelRoomOld.setNameRoom(nameRoom);
//        hotelRoomOld.setBadInRoom(Integer.parseInt(badInRoom));
//        hotelRoomOld.setPriceRoom(Double.parseDouble(priceRoom));
//        if ("true".equals(freeOrBusy)){
//            hotelRoomOld.setFreeOrBusy(true);
//        } else {
//            hotelRoomOld.setFreeOrBusy(false);
//        }
//        hotelRoomOldList.add(hotelRoomOld);
//        model.addAttribute("hotelRoomOldList", hotelRoomOldList);
//        return "/index";
//    }
//}
