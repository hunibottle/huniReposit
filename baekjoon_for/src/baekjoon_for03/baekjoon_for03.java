package baekjoon_for03;

import java.util.Scanner;

public class baekjoon_for03 {
	
	public static void main(String[] args) {
	
		Scanner sc = new Scanner(System.in);
		
		int a = sc.nextInt();

		for(int b = 1 ; b < a+1 ; b++) {
			
			for(int c = a ; c > b ; c--) {
				System.out.print(" ");
			}
			for(int d = 0 ; d < b ; d++ ) {
				System.out.print("*");
			}
			System.out.println(" ");
		}
		
	}
}
