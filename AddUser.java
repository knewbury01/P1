import driver.Driver;

public class AddUser {
   

    static String get_user_info() {
        System.out.println("Enter name:");
        return System.console().readLine();
    }

    static void write_info(String info) {
        Driver.connected_write_info(info);
    }
    
    static void user_write_info() {
        String userInput = System.console().readLine();
        System.err.printf("User input: %s", userInput);
    }

    public static void main(String[] args) {
        String info;

        info = get_user_info();
        write_info(info);
    }
}
