using Toybox.WatchUi;

class RouteView extends WatchUi.View {
    var route as RouteAttempt;

    function initialize(route as RouteAttempt) {
        View.initialize();
        self.route = route;
    }

    function onLayout(dc as $.Toybox.Graphics.Dc) as Void {
        setLayout(Rez.Layouts.RouteAttempt(dc));
    }

    function onUpdate(dc as $.Toybox.Graphics.Dc) as Void {
        View.onUpdate(dc);
        dc.drawText(dc.getWidth()/2, dc.getHeight()/2, Graphics.FONT_NUMBER_MEDIUM, route.attempts, Graphics.TEXT_JUSTIFY_CENTER);
    }
}