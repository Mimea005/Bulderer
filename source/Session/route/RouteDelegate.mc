import Toybox.WatchUi;

class RouteDelegate extends WatchUi.BehaviorDelegate {
    var route as RouteAttempt;

    function initialize(route as RouteAttempt) {
        BehaviorDelegate.initialize();
        self.route = route;
    }

    function onSelect() as $.Toybox.Lang.Boolean {
        self.route.attempts++;
        requestUpdate();
        return true;
    }

    function onBack() as $.Toybox.Lang.Boolean {
        popView(SLIDE_UP);
        return true;
    }
}