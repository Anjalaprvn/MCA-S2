import java.util.Scanner;

public class ArraySearch {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int[] array = new int[n];
        for (int i = 0; i < n; i++) array[i] = scanner.nextInt();
        int target = scanner.nextInt();
        boolean found = false;
        for (int num : array) if (num == target) { found = true; break; }
        System.out.println(found ? "Element found!" : "Element not found.");
        scanner.close();
    }
}
