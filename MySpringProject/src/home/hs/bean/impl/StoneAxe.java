package home.hs.bean.impl;

import home.hs.bean.Axe;

public class StoneAxe implements Axe {
    @Override
    public String chop() {
        return "石头刀砍柴好慢！";
    }
}
