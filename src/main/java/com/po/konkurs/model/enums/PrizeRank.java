package com.po.konkurs.model.enums;

public enum PrizeRank {
    FIRST("1 miejsce"), SECOND("2 miejsce"), THIRD("3 miejsce"), MERIT("Wyróżnienie");

    private String value;

    PrizeRank(String s) {
        value = s;
    }

    public String getValue() {
        return value;
    }
}
