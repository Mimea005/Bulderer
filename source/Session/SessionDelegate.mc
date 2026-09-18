import Toybox.WatchUi;

class SessionDelegate extends BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onBack() as $.Toybox.Lang.Boolean {
        popView(WatchUi.SLIDE_UP);
        return true;
    }

    function onSelect() as $.Toybox.Lang.Boolean {
        var route = new RouteAttempt();
        pushView(new RouteView(route), new RouteDelegate(route), SLIDE_DOWN);
        return true;
    }
}