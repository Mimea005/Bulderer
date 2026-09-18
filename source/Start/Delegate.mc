import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.Application;

class ClimbrDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }
    
    function onSelect() as Boolean {
        WatchUi.pushView(new SessionView(), new SessionDelegate(), WatchUi.SLIDE_DOWN);
        return true;
    }

}
