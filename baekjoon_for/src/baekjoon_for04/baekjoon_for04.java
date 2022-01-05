package baekjoon_for04;

import java.util.Scanner;

public class baekjoon_for04 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		Scanner sa = new Scanner(System.in);
		
		int a = sc.nextInt();
		int b = sa.nextInt();
		int[] array = new int[10];
		
		for(int i = 0 ; i < array.length ; i++) {
			array[i] = sc.nextInt();
		}
		
		for(int i = 0 ; i < array.length ; i++) {
			if(array[i]< b) {
				System.out.print(array[i]+" ");	
			}
		
		}

	}
}