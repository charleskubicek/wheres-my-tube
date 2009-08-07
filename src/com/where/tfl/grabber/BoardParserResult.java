package com.where.tfl.grabber;

import com.where.dao.hsqldb.TimeInfo;

import java.util.List;
import java.util.Map;
import java.util.Collections;

/**
 * @author Charles Kubicek
*/
public class BoardParserResult {
    private final TagSoupParser.BoardParserResultCode resultCode;
    private final Map<String, List<TimeInfo>> boardData;

    public BoardParserResult(TagSoupParser.BoardParserResultCode resultCode, Map<String, List<TimeInfo>> boardData) {
        this.resultCode = resultCode;
        this.boardData = Collections.unmodifiableMap(boardData);
    }

    public TagSoupParser.BoardParserResultCode getResultCode() {
        return resultCode;
    }

    public Map<String, List<TimeInfo>> getBoardData() {
        return boardData;
    }
}