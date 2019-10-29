// Challenge 1
// Write failing test cases for given 3 challenges

// Challenge 2
// Sort by Digit Length, then By Number Itself
// Write a function that sorts an array of integers by their digit length in
// descending order, then settles ties by sorting numbers with the same digit length in ascending order.
digitSort(List numbersArray) {
  numbersArray.sort((dynamic a, dynamic b) {
    if (a.toString().length == b.toString().length) {
      return a.compareTo(b);
    } else {
      return b.toString().length.compareTo(a.toString().length);
    }
  });
  return numbersArray;
}

// Challenge 3
// IPv4 Validation
// Create a function that takes a string (IPv4 address in standard dot-decimal
// format) and returns true if the IP is valid or false if it's not.
// isValidIP("1.2.3.4") ➞ true
// isValidIP("1.2.3") ➞ false
// isValidIP("123.045.067.089") ➞ false
bool isValidIP(String ip) {
  List ipList = ip.split('.');
  if (ipList.length == 4) {
    for (int i = 0; i < ipList.length; i++) {
      if (int.parse(ipList[i]) >= 0 && int.parse(ipList[i]) < 256) {
        if (ipList[i].length == 3 && ipList[i][0] == 0) {
          return false;
        } else if (ipList[i].length == 2 && ipList[i][0] == 0) {
          return false;
        }
        return true;
      }
      else {return false;}
    }
    return true;
  }
  return false;
}
// Challenge 4
// Double Character Swap
// Write a function to replace all instances of character c1 with character c2 and vice versa.
// Examples
// doubleSwap( "aabbccc", "a", "b") ➞ "bbaaccc"

String doubleSwap(String givenString, String c1, String c2) {
  List wordList = givenString.split('');
  for(int i = 0; i < wordList.length; i++){
    if(wordList[i] == c1){
      wordList[i] = c2;
    }
    else if(wordList[i] == c2){
      wordList[i] = c1;
    }
  }
  String finalString = wordList.join('');
  return finalString;
}

main() {
  print(doubleSwap("aabbccc", "a", "b"));
  print(digitSort([224, 10, 12, 6]));
  print(isValidIP('192.168.0.1'));
}
