/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import controllers.RegionController;
import daos.GeneralDAO;
import icontroller.IRegionController;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import models.Country;
import models.Location;
import models.Region;
import org.hibernate.SessionFactory;

/**
 *
 * @author Lenovo
 */
public class TestGeneric {

    public static void main(String[] args) {
//        List<String> nama = new ArrayList<>();
//        List<Region> regions = new ArrayList<>();
//
//        GeneralDAO<Region> rDao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Region.class);
//        GeneralDAO<Country> cDao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Country.class);
//        GeneralDAO<Location> lDao = new GeneralDAO<>(HibernateUtil.getSessionFactory(), Location.class);
//        Region r = new Region();
//        r.setId(new BigDecimal("10"));
//        r.setName("Jauh");
//        System.out.println(dAO.saveOrDelete(r, false));
//        rDao.search("");
//        for (Region region : rDao.search("a")) {
//            System.out.println(region.getName());
//        }
//        System.out.println("======================");
//        cDao.search("");
//        for (Country region : cDao.search("a")) {
//            System.out.println(region.getName());
//        }
//        System.out.println("======================");
//        for (Location region : lDao.search("a")) {
//            System.out.println(region.getStreetAddress());
//        }
//        System.out.println("======================");
//        for (Region region : rDao.getAll()) {
//            System.out.println(region.getName());
//        }

//        Region region = rDao.getById(new BigDecimal(1));
//        System.out.println(region.getId());
//        System.out.println(region.getName());
//        
//        Country country = cDao.getById("AR");
//        System.out.println(country.getId());
//        System.out.println(country.getName());
        SessionFactory factory = HibernateUtil.getSessionFactory();
        IRegionController ireg = new RegionController(factory);
//        for(Region region : ireg.getAll()){
//            System.out.println(region.getName());
//        }
//        System.out.println(ireg.save("10", "musymusy"));
//        System.out.println(ireg.delete("10"));
        Region region = ireg.getById("1");
        System.out.println(region.getId() +" " +region.getName());
        System.out.println("\"");
    }
}
