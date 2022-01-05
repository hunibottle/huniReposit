package baekjoon_if;

import java.util.Scanner;

public class baekjoon_if {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int A = sc.nextInt();
		int B = sc.nextInt();
		
		if(B<45) {
			if(A==0) {
				System.out.print(24-1+" ");
				System.out.println(60-(45-B));
			}
			else {
			System.out.print(A-1);
			System.out.println(60-(45-B));
			}
		}
		
	}
	
}