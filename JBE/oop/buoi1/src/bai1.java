import java.util.Scanner;

public class bai1 {
    public static void main(String[] args) {
        int age;
        float salary;
        String name;

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter your age: ");
        age = sc.nextInt();

        System.out.print("Enter your salary: ");
        salary = sc.nextFloat();

        System.out.print("Enter your name: ");
        name = sc.next();

        System.out.println("Name: " + name + " Age: " + age + " Salary: " + salary  );
    }
}
