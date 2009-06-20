package com.where.core;

import org.apache.log4j.Logger;

import java.util.Map;
import java.util.HashMap;
import java.util.List;

/**
 * We will recive various directions along one line, ie on jub will be south then west,
 * so we have an abstract direction that represents both directions. We start with an abstract direction
 * and get the "concrete" direction we need to measure.
 * <p/>
 * e.g. one directions are south and east so when we are parsing direction one and we get some
 * results we use the abstract directions to get either south or east
 */
enum AbstractDirection {
    ONE(new DirectionName[]{DirectionName.SOUTHBOUND, DirectionName.EASTBOUND}),
    TWO(new DirectionName[]{DirectionName.NORTHBOUND, DirectionName.WESTBOUND});

    private static Logger LOG = Logger.getLogger(AbstractDirection.class);

    private final Map<String, DirectionName> concreteDirections;

    AbstractDirection(DirectionName[] directions) {
        concreteDirections = new HashMap<String, DirectionName>(directions.length);

        for (DirectionName direction : directions) {
            concreteDirections.put(direction.getName(), direction);
        }
    }

    /**
     * Given a list of directions found from parsing readouts, get a
     * proper direction.
     *
     * TODO: why is it iterating? Can it come across an unkown direction?
     *
     * @param foundDirections
     * @return
     */
    public DirectionName getConcreteDirection(List<String> foundDirections) {
        for (String foundDirection : foundDirections) {
            if (concreteDirections.containsKey(foundDirection))
                return concreteDirections.get(foundDirection);
            else {
                LOG.warn("Found unknown direction: 'foundDirection'");
            }
        }

        // should never get here.
        return null;
    }
}
