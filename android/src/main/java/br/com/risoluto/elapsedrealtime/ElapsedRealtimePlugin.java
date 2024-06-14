package br.com.risoluto.elapsedrealtime;

import android.os.SystemClock;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "ElapsedRealtime")
public class ElapsedRealtimePlugin extends Plugin {

    private ElapsedRealtime implementation = new ElapsedRealtime();

    @PluginMethod
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", implementation.echo(value));
        call.resolve(ret);
    }

    @PluginMethod
    public void getElapsedRealtime(PluginCall call) {
        long elapsedTime = SystemClock.elapsedRealtime();
        JSObject ret = new JSObject();
        ret.put("elapsedTime", elapsedTime);
        call.resolve(ret);
    }
}
