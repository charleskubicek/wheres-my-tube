package com.where.dao;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.log4j.Logger;

import java.net.URL;
import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

/**
 * THIS CLASS NEEDS SORTING OUT
 * */
public class HibernateUtil {

    private final SessionFactory sessionFactory;
    public static final String HSQLDB_IN_MEMORY_DB_CONNECTION_PREFIX = "jdbc:hsqldb:file:";
    public static final String HSQLDB_DB_NAME ="wmtdb";
    private static final Logger LOG = Logger.getLogger(HibernateUtil.class);

    private HibernateUtil()
     {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            URL dbResource = HibernateUtil.class.getClassLoader().getResource(HSQLDB_DB_NAME+".script");
            LOG.info("loading filebased database from "+dbResource);
            String parent = FileUtils.toFile(dbResource).getAbsoluteFile().getParent();
            String connectionUrl = HSQLDB_IN_MEMORY_DB_CONNECTION_PREFIX+'/'+parent.replace("\\", "/")+"/"+HSQLDB_DB_NAME;
            URL resource = HibernateUtil.class.getClassLoader().getResource("hibernate-mappings.xml");
            Configuration configuration = makeHibernateConfig(resource, connectionUrl);

            sessionFactory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            LOG.error("Initial SessionFactory creation failed." + ex, ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    private static Configuration makeHibernateConfig(URL mappingFile, String connection) {
		Configuration config = new Configuration().
			setProperty("hibernate.dialect", "org.hibernate.dialect.HSQLDialect").
			setProperty("hibernate.connection.driver_class", "org.hsqldb.jdbcDriver").
			setProperty("hibernate.connection.url", connection).
            setProperty("hibernate.username", "sa").
            setProperty("hibernate.password", "").
			setProperty("hibernate.current_session_context_class", "thread").
			setProperty("hibernate.show_sql", "true"). // can turn this off if it gets annoying
			setProperty("hibernate.hbm2ddl.auto", "update").
			addURL(mappingFile);
		return config;
	}

    public static SessionFactory getSessionFactory() {
        return new HibernateUtil().sessionFactory;
    }

    public static void main(String[] args) {
        
    }

}
