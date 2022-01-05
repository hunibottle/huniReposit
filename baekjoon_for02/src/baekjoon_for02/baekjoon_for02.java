package baekjoon_for02;

import java.util.Scanner;

public class baekjoon_for02 {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		for(int b = 1 ; b < a+1 ; b++) {
			for(int c = 0 ; c < b ; c++) {
				System.out.print("*");	
			}		
			System.out.println("");
		}
	}
}
