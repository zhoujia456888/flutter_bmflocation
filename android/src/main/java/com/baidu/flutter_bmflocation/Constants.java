package com.baidu.flutter_bmflocation;

public class Constants {

    public static final String RESULT_KEY = "result";
    public static final String ERROR_KEY = "errorCode";

    /**
     * channel名
     */
    public static class MethodChannelName{

        /** channel */
        public static final String LOCATION_CHANNEL = "flutter_bmflocation";

        /** geofence channel */
        public static final String GEOFENCE_CHANNEL = "flutter_bmfgeofence";
    }

    /**
     * Method名
     */
    public static class MethodID {

        public static final String LOCATION_SETAGREEPRIVACY = MethodChannelName.LOCATION_CHANNEL +
                "/setAgreePrivacy";

        public static final String LOCATION_SETOPTIONS = MethodChannelName.LOCATION_CHANNEL +
                "/setOptions";

        public static final String LOCATION_SERIESLOC = MethodChannelName.LOCATION_CHANNEL +
                "/seriesLocation";

        public static final String LOCATION_STOPLOC = MethodChannelName.LOCATION_CHANNEL +
                "/stopLocation";

        public static final String LOCATION_CIRCLEGEOFENCE = MethodChannelName.GEOFENCE_CHANNEL +
                "/circleGeofence";

        public static final String LOCATION_GETALLGEOFENCEID = MethodChannelName.GEOFENCE_CHANNEL +
                "/getAllGeofenceId";

        public static final String LOCATION_POLYGONGEOFENCE = MethodChannelName.GEOFENCE_CHANNEL +
                "/polygonGeofence";

        public static final String LOCATION_GEOFENCECALLBACK = MethodChannelName.GEOFENCE_CHANNEL +
                "/geofenceCallback";

        public static final String LOCATION_REMOVEGEOFENCE = MethodChannelName.GEOFENCE_CHANNEL +
                "/removeAllGeofence";

        public static final String LOCATION_MONITORGEOFENCE = MethodChannelName.GEOFENCE_CHANNEL +
                "/monitorGeofence";

        public static final String LOCATION_NERWORKSTATE = MethodChannelName.LOCATION_CHANNEL +
                "/networkState";

        public static final String LOCATION_STARTHEADING = MethodChannelName.LOCATION_CHANNEL +
                "/startUpdatingHeading";

        public static final String LOCATION_STOPHEADING = MethodChannelName.LOCATION_CHANNEL +
                "/stopUpdatingHeading";
    }
}
