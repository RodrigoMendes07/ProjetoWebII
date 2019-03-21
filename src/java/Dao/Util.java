package Dao;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Util {

    public boolean ordemDatas(String data1, String data2) {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate dta1 = LocalDate.parse(data1, dtf);
        LocalDate dta2 = LocalDate.parse(data2, dtf);
        if (dta1.compareTo(dta2) > 0) {
            return false;
        }
        return true;
    }
}