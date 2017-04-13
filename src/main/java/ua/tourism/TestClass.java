package ua.tourism;

import java.text.*;
import java.util.*;

public class TestClass {
    public static void main(String[] args) {
        SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");

        String str = args.length == 0 ? "2017-11-20" : args[0];

        System.out.print("Строка " + str + " распаршена как ");

        Date parsingDate;
        try {
            parsingDate = ft.parse(str);
            System.out.println(ft.format(parsingDate));
        }catch (ParseException e) {
            System.out.println("Нераспаршена с помощью " + ft);
        }

//        String date1 = "01.03.2016";
//        String date2 = "01.02.2016";
//
//        SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");
//
//        Date dateOne = null;
//        Date dateTwo = null;
//
//        try {
//            dateOne = format.parse(date1);
//            dateTwo = format.parse(date2);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        System.out.println(dateOne);
//        // Количество дней между датами в миллисекундах
//        long difference = dateOne.getTime() - dateTwo.getTime();
//        // Перевод количества дней между датами из миллисекунд в дни
//        int days =  (int)(difference / (24 * 60 * 60 * 1000)); // миллисекунды / (24ч * 60мин * 60сек * 1000мс)
//        // Вывод разницы между датами в днях на экран
//        System.out.println(days + " дн.");
    }
}
