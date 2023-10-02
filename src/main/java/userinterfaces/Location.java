package userinterfaces;

import net.serenitybdd.screenplay.targets.Target;

public class Location {

    public static final Target BUTTONLOCATION = Target.the ("button location").
            locatedBy("//span[contains(.,'Next: Location')]");
    public static final Target ZIP = Target.the ("button location").
            locatedBy("//*[@id=\"zip\"]");
    public static final Target BUTTONDEVICES = Target.the ("button location").
            locatedBy("//*[@id=\"regs_container\"]/div/div[2]/div/div[2]/div/form/div[2]/div/a/span");
}
