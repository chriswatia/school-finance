/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package finance_system;

import javax.swing.JOptionPane;

/**
 *
 * @author chris
 */
class Number_2_words {

    public static final String[] units = {"", "One", "Two", "Three", "Four",
        "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve",
        "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen",
        "Eighteen", "Nineteen"
    };

    public static final String[] tens = {
        "", // 0
        "", // 1
        "Twenty", // 2
        "Thirty", // 3
        "Forty", // 4
        "Fifty", // 5
        "Sixty", // 6
        "Seventy", // 7
        "Eighty", // 8
        "Ninety" // 9
    };

    public static String convert(final int n) {
        if (n < 0) {
            return "Minus " + convert(-n);
        }

        if (n < 20) {
            return units[n];
        }

        if (n < 100) {
            return tens[n / 10] + ((n % 10 != 0) ? " " : "") + units[n % 10];
        }

        if (n < 1000) {
            return units[n / 100] + " Hundred" + ((n % 100 != 0) ? " " : "") + convert(n % 100);
        }

        if (n < 100000) {
            return convert(n / 1000) + " Thousand" + ((n % 10000 != 0) ? " " : "") + convert(n % 1000);
        }

        else{
            JOptionPane.showMessageDialog(null, "Out of Range");
        }
        return null;
    }
}
