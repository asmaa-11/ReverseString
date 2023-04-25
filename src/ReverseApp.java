import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


public class ReverseApp {

	public static void main(String[] args) throws IOException {
		boolean isExist = false;
		while (!isExist) {
			System.out.println("please insert the string and to esixt press 0");

			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			// check length
			String name = reader.readLine();
			// Reading data using readLine
			if (name.equals("0")) {
				return;
			}

			if (name == null || name.isEmpty() || name.length() > 2000) {
				System.out.println("string should be not empty and the max length is 2000");
				// return;
			} else {
				// check if contains only chars and digits
				if (!name.matches("[a-z()]+")) {
					System.out.println("String only contains lower case English characters and parentheses.");

				} else {

					
					int openIndex = -1;
					int i = 0;
					for (i = 0; i < name.length(); i++) {
						// System.out.println(" char "+String.valueOf( name.charAt(i)));
						if (name.charAt(i) == '(') {
							if (openIndex == -1) {
								openIndex = i;

							} else {
								System.out.println(" not balanced");
								break;

							}
						}
						if (name.charAt(i) == ')') {
							if (openIndex != -1) {
								// reverse
								String revers = name.substring(openIndex + 1, i);
								String reversed = new StringBuffer(revers).reverse().toString();
								// Printing the read line
								name = name.replace(revers, reversed);
								openIndex = -1;

							} else {
								System.out.println(" not balanced");
								break;
							}
						}
					}
					if (openIndex != -1) {
						System.out.println(" not balanced");

					} else {
						if (i == name.length())
							System.out.println("after reverse  : " + name);
					}
				}
			}
		}
	}
}
