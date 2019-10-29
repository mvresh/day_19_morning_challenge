import "package:test/test.dart";
import 'main.dart';

void main() {
  test("challenge 3", () {
    expect(isValidIP('192.168.0.1'), equals(true));
  });

  test("challenge 3 a", () {
    expect(isValidIP('255.255.0.1'), equals(true));
  });

  test("challenge 3 b", () {
    expect(isValidIP('0.0.0.0'), equals(true));
  });

  test("challenge 3 c" , () {
    expect(isValidIP('-9.168.0.1'), equals(false));
  });

  test("challenge 4", () {
    expect(doubleSwap( "aabbccc", "a", "b"), equals("bbaaccc"));
  });


}