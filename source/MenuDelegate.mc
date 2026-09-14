import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;
import Toybox.Application;

class ClimbrMenuDelegate extends WatchUi.MenuInputDelegate {

    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item as Symbol) as Void {
        var count = Properties.getValue("count");
        if (item == :item_1) {
            count += 1;            
        } else if (item == :item_2) {
            count -= 1;
        }
        Properties.setValue("count", count);
    }

}
