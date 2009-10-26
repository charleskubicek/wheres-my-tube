package com.where.tools;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.apache.commons.io.IOUtils;
import com.where.dao.hsqldb.HibernateUtil;
import com.where.hibernate.BranchStop;
import com.where.hibernate.Station;
import com.where.hibernate.Branch;
import com.where.hibernate.TflStationCode;

import java.util.List;
import java.util.StringTokenizer;
import java.io.FileInputStream;

/**
 * @author Charles Kubicek
 */
public class AddLineFromCsv {

    static String branchToAdd = "hammersmith";

    public static void doIt(String csvFile) throws Exception {
        List<String> csvLines = IOUtils.readLines(new FileInputStream(csvFile));

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory("jdbc:hsqldb:hsql://localhost/wmtdb");
        Session session = sessionFactory.openSession();
        Transaction tx = session.getTransaction();
        tx.begin();
        try {
            Branch branch = (Branch) session.createQuery("from Branch as bs where bs.name = '" + branchToAdd + "'").list().get(0);
            int branchId = branch.getId();
            System.out.println("AddLineFromCsv.doIt branchn id is: "+branchId);
            int count = 0;
            for (String csvLine : csvLines) {
                StringTokenizer tok = new StringTokenizer(csvLine, ",");
                String lat = tok.nextToken();
                String lng = tok.nextToken();
                String name = tok.nextToken();

                String code = "";
                if (tok.hasMoreTokens()) code = tok.nextToken();
                System.out.println("AddLineFromCsv.doIt " + lat + " " + lng + " " + name + " " + code);

                Station station = new Station(name, "", new Double(lat), new Double(lng));
                session.save(station);

                TflStationCode tflStationCode = new TflStationCode(new Integer(station.getId()).toString(), code, branchToAdd);
                session.save(tflStationCode);

                BranchStop stop = new BranchStop(new Integer(station.getId()).toString(), count, new Integer(branchId).toString());
                session.save(stop);
                System.out.println("AddLineFromCsv.doIt branchstop id : '"+stop.getId()+"', code id: '"+tflStationCode.getId()+"', station id: '"+station.getId()+"'");
                count++;
            }

            tx.commit();


            //System.out.println("AddLineFromCsv.doIt ROLLING BACK!!!");
            //session.getTransaction().rollback();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        }
        session.close();

//List<BranchStop> result = session.createQuery("from BranchStop as bs where bs.branchId = '" + branch.getId() + "' order by orderNo").list();

    }

    public static void main(String[] args) {
        String csv = "C:\\data\\projects\\wheresmytube\\etc\\hammersmith.csv";
        try {
            doIt(csv);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
