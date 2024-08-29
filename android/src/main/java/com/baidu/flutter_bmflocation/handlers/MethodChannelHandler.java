package com.baidu.flutter_bmflocation.handlers;

import android.content.Context;

import com.baidu.flutter_bmflocation.Constants;
import com.baidu.flutter_bmflocation.MethodChannelManager;
import com.baidu.geofence.GeoFenceClient;
import com.baidu.location.LocationClient;

import java.util.HashMap;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public abstract class MethodChannelHandler {
    private static final String TAG = MethodChannelHandler.class.getSimpleName();

     // channel
    protected MethodChannel mMethodChannel = null;
    // geofence channel
    protected MethodChannel mGeofenceMethodChannel = null;
    // result （geofence暂时没有使用result）
    protected MethodChannel.Result mResult = null;

    public void updateChannel(){
        mMethodChannel = MethodChannelManager.getInstance().getLocationChannel();
        mGeofenceMethodChannel = MethodChannelManager.getInstance().getGeofenceChannel();
    }

    public void handleMethodCallResult(LocationClient mLocationClient, MethodCall call, MethodChannel.Result result){
        mResult = result;
    }

    public void handleMethodGeofenceCallResult(
        Context context, GeoFenceClient mGeoFenceClient, MethodCall call, MethodChannel.Result result){
        mResult = result;
    }

    public void handleMethodHeadingCallResult(
            Context context, MethodCall call, MethodChannel.Result result){
        mResult = result;
    }

    public void sendReturnResult(final boolean ret){
        if (null == mResult){
            return;
        }

        mResult.success(new HashMap<String, Boolean>(){
            {
                put(Constants.RESULT_KEY, ret);
            }
        });
    }

    public void sendResultCallback(String methodID, final Object value, final int errorCode){

        if (methodID.startsWith(Constants.MethodChannelName.GEOFENCE_CHANNEL)) {
            if (null == mGeofenceMethodChannel) {
                return;
            }

            mGeofenceMethodChannel.invokeMethod(methodID, new HashMap<String,
                    Object>(){
                {
                    put(Constants.RESULT_KEY, value);
                    put(Constants.ERROR_KEY, errorCode);
                }
            });
        } else {
            if (null == mMethodChannel) {
                return;
            }

            mMethodChannel.invokeMethod(methodID, new HashMap<String,
                    Object>() {
                {
                    put(Constants.RESULT_KEY, value);
                    put(Constants.ERROR_KEY, errorCode);
                }
            });
        }
    }
}
