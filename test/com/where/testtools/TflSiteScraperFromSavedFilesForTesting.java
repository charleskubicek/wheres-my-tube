package com.where.testtools;

import com.where.tfl.grabber.*;
import com.where.domain.BranchStop;
import com.where.domain.Branch;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import java.util.Collections;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * Reads arrival boards from stored files
 *
 * @author Charles Kubicek
 */
public class TflSiteScraperFromSavedFilesForTesting implements ArrivalBoardScraper {

    private final Map<String, File> stationNameToRecords;
    private final RegexParser parser;

    public TflSiteScraperFromSavedFilesForTesting(File recordingsFolder){
        this.parser = new RegexParser();
        stationNameToRecords = new HashMap<String, File>();

        File[] files = recordingsFolder.listFiles();
        for(File f: files){
            String stationNameWithDotTxt = (f.getName().split("-")[1]);
            String stationName = stationNameWithDotTxt.substring(0, (stationNameWithDotTxt.length()-4));
            stationNameToRecords.put(stationName, f);
        }
    }

    public TflSiteScraperFromSavedFilesForTesting(File recordingsFolder, String fileIndex){
        this.parser = new RegexParser();
        stationNameToRecords = new HashMap<String, File>();

        File[] files = recordingsFolder.listFiles();
        for(File f: files){
            if(f.getName().startsWith(""+fileIndex)){
                String stationNameWithDotTxt = (f.getName().split("-")[2]);
                String stationName = stationNameWithDotTxt.substring(0, (stationNameWithDotTxt.length()-4));
                stationNameToRecords.put(stationName, f);
            }
        }
    }

    public BoardParserResult get(BranchStop branchStop, Branch branch) throws ParseException {
        try {
            File file = stationNameToRecords.get(branchStop.getStation().getName());
            if(file == null){
                return new BoardParserResult(BoardParserResult.BoardParserResultCode.PARSE_EXCEPTION, Collections.EMPTY_MAP);
            }
            URL url = file.toURI().toURL();
            return parser.parse(url.openStream());
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return null;
        }  catch (IOException e) {
            e.printStackTrace();
            return null;
        }

    }
}
