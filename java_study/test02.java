import java.util.Scanner;

public class test02 {

    public static void main(String args[]){


        Scanner scanner = new Scanner(System.in);

        int count = scanner.nextInt();
        int[] num = new int[count];
        int max=0;
        int min = 10000;

        for(int i = 0 ; i < count ; i++){
            num[i] = scanner.nextInt();
        }
        for(int i =0 ; i < count ; i++){
            System.out.print(num[i]+" ");
        }
        for(int i = 0 ; i < count ; i++){
            if(num[i] > max){
                max = num[i];
            }
        }
        for(int i = 0 ; i < count ; i++){
            if(num[i] < min){
                min = num[i];
            }
        }

        System.out.println(" ");
        System.out.println(num.length);
        System.out.println(max);
        System.out.println(min);

        scanner.close();
    }
}
