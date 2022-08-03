// DOCS: https://dart.dev/guides

// TASK 1

// Create a function that takes in a year as an integer and output whether it is a leap year or not. Your function should return a boolean.

// Examples
// isLeapYear(2020) ➞ true
// isLeapYear(2000) ➞ true
// isLeapYear(1900) ➞ false

// Notes : A leap year requires two criteria to be satisfied.
// 1. The year must be divisible by 4.
// 2. If the year is divisible by 100, it must also be divisible by 400.

// END TASK 1

// TASK 2

// Given an array of integers, determine the second largest element in that array.

// Examples
// secondLargest([2, 4, 12, 6]) ➞ 6

// secondLargest([-12, 2, 0, -6]) ➞ 0

// END TASK 2

// TASK 3

// Write a function that accepts two strings and outputs whether the strings are rotations of each other or not.

// Examples
// rotational("HELLO", "LOHEL") ➞ true

// rotational("HELLO", "EHOLL") ➞ false

// rotational("HELLO" , "GOODBYE") ➞ false

// Notes
// Two strings are rotations of each other if and only if
// 1. They are of the same length.
// 2. The second string is obtained from a looped sequence of the first string. For example LOHEL is obtained by starting at index 3(or 4th letter) and uses all letters from the string "HELLO", preserving sequence of the letters.

// END TASK 3

// TASK 4

// Create a function takes in an integer and reverses it.

// Examples
// reverseInt(857) ➞ 758

// reverseInt(120) ➞ 21

// END TASK 4

// TASK 5

// Write a function that checks if two strings are anagrams (strings contains same characters in same quantity)
// e. g. "listen" and "silent"

// isAnagram("listen", "silent") -> true
// isAnagram("listen", "silence") -> false
// isAnagram("listen", "listnn") -> false

// END TASK 5
bool isLeapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true;
      }
      return false;
    }
    return true;
  }
  return false;
}

int secondLargestElement(List<int> input) {
  input.sort();
  int _secondlargest = input[input.length - 1];
  input.remove(_secondlargest);
  _secondlargest = input[input.length - 1];

  return _secondlargest;
}

bool isRotational(String pram1, String pram2) {
  if (pram1.length == pram2.length) {
    return true;
  }
  int count = 0;

  for (int x = 0; x < pram2.length; x++) {
    if (pram1.contains(pram2[x])) {
      count++;
    }
  }

  return count == pram2.length;
}

int revserseInt(int input) {
  String _input = input.toString().split('').reversed.join();

  return int.parse(_input);
}

void main() {
  print(isLeapYear(2020));
  print(secondLargestElement([2, 12, 4, 6]));
  print(isRotational("HELLO", "GOODBYE"));
  print(isRotational("listen", "silence"));
  print(revserseInt(875));
  print(revserseInt(120));

  ///  TASK 5 is same task 4
}
