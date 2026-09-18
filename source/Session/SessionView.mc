import Toybox.WatchUi;

class SessionView extends WatchUi.View {
    function initialize() {
        View.initialize();
    }

    function onLayout(dc as $.Toybox.Graphics.Dc) as Void {
        setLayout(Rez.Layouts.SessionLayout(dc));
    }
}