package com.where.web;

import org.apache.log4j.Logger;
import org.restlet.resource.ResourceException;
import org.restlet.resource.ServerResource;
//import org.restlet.resource.StringRepresentation;
//import org.restlet.data.Request;
//import org.restlet.data.Response;
import com.where.dao.hsqldb.DataMapper;
import com.where.dao.hsqldb.DataMapperImpl;
import com.where.dao.hsqldb.SerializedFileLoader;
import com.where.domain.DaoFactory;
import com.where.domain.DataMapperDaoFactoryImpl;

import java.util.Date;

/**
 * @author Charles Kubicek
 */
public class WmtResource extends ServerResource {

    @Override  
    protected void doInit() throws ResourceException {
        super.doInit();
    }


    protected String getRestPathAttribute(String attributeName) {
        return (String) getRequest().getAttributes().get(attributeName);
    }
}
