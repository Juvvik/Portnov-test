package support;


import java.util.Scanner;
public class MyJavaPractice {
    public static void main(String[] args) {
        System.out.println("I love Pizza");
        System.out.println("Its really good");
        System.out.println(10 + 20);


        // int i=10;
        // double d=10.4555;
        //char c= 'A';
        // String s= "welcome";
        // boolean b=true;
        // System.out.println(i);
        // System.out.println(d);
        // System.out.println(c);
        // System.out.println(s);
        // System.out.println(b);

        // Arithmetic Operators
        int a = 10;
        int b = 20;
        System.out.println(a + b);
        System.out.println(b - a);
        System.out.println(a * b);
        System.out.println(a / b);
        System.out.println(a % b);

        // Relational Operators
        System.out.println(a > b);
        System.out.println(a < b);
        System.out.println(a <= b);
        System.out.println(a >= b);
        System.out.println(a == b);
        System.out.println(a != b);

        // Logical Operators
        boolean x = true;
        boolean y = false;

        System.out.println(x && y); //false
        System.out.println(x || y); //true
        System.out.println(!x); //false
        System.out.println(!y); //true

        // Assignment Operators
        int c;
        c = a;
        System.out.println(c);
        c = b;
        System.out.println(c);

        //  c = 100;
        //c++;         //c=c+1; increment operator
        //c--;         //c=c-1
        //c+=5;        // increase by 5 105
        //c-=5         // decrease by 5 95

        //System.out.println(c);

        //Conditional statements
        //if, if.else, Nested if..else , Switch..case
        // case1 : If age>18 eligible to vote
        // case1 : If age<18 Not eligible to vote
        int age = 20;

        if (age >= 18) {
            System.out.println("Eligible for Vote");
        }
        else {
            System.out.println("Not program executed");
        }
        System.out.println("program executed");
     }



    }





