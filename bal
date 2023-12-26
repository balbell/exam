import java.util.Scanner;

// Base class representing a Bank account
class Bank {
    private long accnum;

    // Constructor to initialize account number
    public Bank(long accnum) {
        this.accnum = accnum;
    }

    // Getter method to retrieve account number
    public long getAcc() {
        return accnum;
    }
}

// Derived class representing a Customer with a name associated with a bank account
class Customer extends Bank {
    private String name;

    // Constructor to initialize account number and customer name
    public Customer(long accnum, String name) {
        super(accnum);
        this.name = name;
    }

    // Getter method to retrieve customer name
    public String getName() {
        return name;
    }

    // Setter method to set or update customer name
    public void setName(String name) {
        this.name = name;
    }
}

// Another derived class representing a Deposit associated with a bank account
class Deposit extends Bank {
    private double payment;

    // Constructor to initialize account number and payment amount
    public Deposit(long accnum, double payment) {
        super(accnum);
        this.payment = payment;
    }

    // Getter method to retrieve payment amount
    public double getPay() {
        return payment;
    }

    // Setter method to set or update payment amount
    public void setPay(double payment) {
        this.payment = payment;
    }
}

// Main class that contains the main method to execute the program
public class Mainstud2 {
    public static void main(String[] args) {
        // Creating a Scanner object for user input
        Scanner obj = new Scanner(System.in);

        // Getting customer information from user input
        System.out.print("Please put in customer name: ");
        String b = obj.nextLine();
        System.out.print("Please put in account number: ");
        long a = obj.nextLong();
        System.out.print("Please put in payment: RM");
        double c = obj.nextDouble();

        // Creating a Customer object with the provided information
        Customer x = new Customer(a, b);

        // Displaying bank information
        System.out.println("-----------------------------------------------");
        System.out.println(" MAYBANK BERHAD ");
        System.out.println("-----------------------------------------------");
        System.out.println("\nAccount number is: " + x.getAcc());
        System.out.println("Customer name is: " + x.getName());

        // Creating a Deposit object with the provided payment information
        Deposit y = new Deposit(a, c);

        // Displaying deposit information
        System.out.println("Payment is: RM" + y.getPay());
        System.out.println("-----------------------------------------------");
    }
}
