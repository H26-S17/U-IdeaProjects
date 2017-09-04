package home.hs.bean.impl;

import home.hs.bean.Axe;
import home.hs.bean.Person;

public class Chinese implements Person {
    private Axe axe;

    public void setAxe(Axe axe) {
        this.axe = axe;
    }

    @Override
    public void useAxe() {
        System.out.println(axe.chop());
    }
}
