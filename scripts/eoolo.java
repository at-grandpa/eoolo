public class eoolo {
    public static void main(String[] args){
        // Logical operators in java accept only boolean.
        System.out.println(expr1() || expr2());
    }

    private static boolean expr1(){
        System.out.println("method expr1");
        return true;
    }

    private static boolean expr2(){
        System.out.println("method expr2");
        return true;
    }
}
