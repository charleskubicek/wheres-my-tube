package tfl.grabber;
/**
 * */

import junit.framework.*;
import com.where.tfl.grabber.TFLSiteScraper;
import com.where.tfl.grabber.TrainScraper;
import com.where.dao.hibernate.BranchStop;
import com.where.dao.TimeInfo;
import com.where.dao.HibernateHsqlLoader;

import java.util.List;
import java.util.Map;

public class TFLGrabberTest extends TestCase {
  private TrainScraper tflGrabber;
  private HibernateHsqlLoader loader;

  protected void setUp() throws Exception {
    super.setUp();    //To change body of overridden methods use File | Settings | File Templates.
    tflGrabber = new TFLSiteScraper();
    this.loader = HibernateHsqlLoader.instance();
  }

  public void testGet() throws Exception {
    BranchStop stop = loader.getBranchStopsToBranches().keySet().iterator().next();
    Map<String,List<TimeInfo>> map = tflGrabber.get(stop,null).getBoardData();

    for (String s : map.keySet()) {
      System.out.println("s: " + s);
      for (TimeInfo get : map.get(s)) {
        System.out.println("info: " + get);
      }
    }
  }
}