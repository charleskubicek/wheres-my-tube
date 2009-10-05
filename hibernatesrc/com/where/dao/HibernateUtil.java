package com.where.dao;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * */
com.where.public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            sessionFactory = new Configuration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    com.where.public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

}
