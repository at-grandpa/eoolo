#!/usr/bin/groovy

public class sce {
    public static void main(String[] args){
        // Logical operators accept only boolean.
        System.out.println(expr1() || expr2());
    }

    private static boolean expr1(){
        return true;
    }

    private static boolean expr2(){
        System.out.println("Not Short-circuit evaluation.");
        return true;
    }
}
