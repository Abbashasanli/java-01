package homeworks.lesson9.eolymp.conditionsloops;

import java.util.Scanner;

public class PreviousEveninteger {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int a = scan.nextInt();
        if (a % 2 == 0) {
            System.out.println(a - 2);
        } else {
            System.out.println(a - 1);
        }
    }
}
