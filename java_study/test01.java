import java.util.Scanner;

public class test01 {
    public static void main(String[] args){

        int count = 0;
        int[] num;
        
        Scanner scanner = new Scanner(System.in);
        count = scanner.nextInt();
        num = new int[count];
       for(int i = 0 ; i < count; i++){
           num[i] = scanner.nextInt();
       }
       scanner.close();
    }
}
