package com.where.tfl.grabber;

import org.apache.xalan.xsltc.trax.SAX2DOM;
import org.apache.xpath.XPathAPI;
import org.apache.xpath.objects.XObject;
import org.apache.commons.io.IOUtils;
import org.ccil.cowan.tagsoup.Parser;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;


import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import java.io.IOException;
import java.util.*;

import com.where.dao.hsqldb.TimeInfo;

/**
 * */
public class TagSoupResultBuilderParser extends TagSoupParser{
    private org.apache.log4j.Logger LOG = org.apache.log4j.Logger.getLogger(TagSoupResultBuilderParser.class);

    public static enum BoardParserResultCode {
        OK, UNAVAILABLE, PARSE_EXCEPTION;
    }

    public BoardParserResult parse(String rawHtml) throws ParseException {
        return parseInternal(build(rawHtml));
    }

     public BoardParserResult parseInternal(Node doc) throws ParseException {
        final String rootXPath = "/html/body/div/div[2]/div";
        int tableIndex = 1;
        String caption = null;
        Map<String, List<TimeInfo>> res = new HashMap<String, List<TimeInfo>>();
        //System.out.println("url = " + url);
        do {
            String newPath = rootXPath + "/table[" + tableIndex + "]";
            String captionXPath = newPath + "/caption";

            caption = xpath(doc, captionXPath);

            if (caption != null && caption.length() > 0) {
                caption = caption.substring(0, caption.indexOf(' '));
                //System.out.println("TagSoupResultBuilderParser.parse caption: '" + caption + "'");
                List<TimeInfo> timeInfos = new ArrayList<TimeInfo>();
                res.put(caption, timeInfos);

                //String all = xpath(newPath);
                //System.out.println("all: " + all);

                for (int i = 2; i < 5; i++) {
                    String info = xpath(doc, newPath + "/tr[" + i + "]/td[2]");
                    String time = xpath(doc, newPath + "/tr[" + i + "]/td[3]");

                    if (info != null) {

                        //System.out.println("time = " + time.trim());
                        //System.out.println("info = " + info.trim());
                        // write if either the info or the time is not empty
                        if ((time != null && time.trim().length() > 0) || (info != null && info.trim().length() > 0)) {
                            //System.out.println("  time = " + time.trim());
                            //System.out.println("  info = " + info.trim());
                            timeInfos.add(new TimeInfo(time.trim(), info.trim()));
                        }
                    }
                }
            }

            tableIndex++;
        } while (caption != null && caption.length() > 0);

        return resultBuilder(res);
    }

    private BoardParserResult resultBuilder( Map<String, List<TimeInfo>> res) {
        if(res.isEmpty()){
           return new BoardParserResult(BoardParserResultCode.UNAVAILABLE, res);
        }else{
           return new BoardParserResult(BoardParserResultCode.OK, res);
        }
    }
}
