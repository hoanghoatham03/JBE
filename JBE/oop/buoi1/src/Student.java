import java.util.Scanner;

public class Student {
    String code;
    String name;

    public void input(Scanner sc) {
        System.out.print("Enter code: ");
        code = sc.nextLine();

        System.out.print("Enter name: ");
        name = sc.nextLine();
    }

    public void display() {
        System.out.println("Code: " + code + "\nName: " + name + "\n");
    }
}
