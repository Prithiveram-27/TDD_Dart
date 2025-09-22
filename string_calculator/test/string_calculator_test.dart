import 'package:string_calculator/negative_number_exception.dart';
import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('empty string returns 0', () {
    final calc = StringCalculator();
    expect(calc.add(''), equals(0));
  });

  test('single number returns the number', () {
    final calc = StringCalculator();
    expect(calc.add('7'), equals(7));
  });

    test('two numbers separated by comma', () {
    final calc = StringCalculator();
    expect(calc.add('1,2'), equals(3));
  });

  test('handles any numbers', () {
    expect(StringCalculator().add('1,2,3,4'), equals(10));
  });

  test('handles newline as separators', () {
    expect(StringCalculator().add('1\n2,3'), equals(6));
  });

test('supports custom delimiter', () {
    expect(StringCalculator().add('//;\n1;2'), equals(3));
  });


  test('throws on single negative', () {
    expect(
      () => StringCalculator().add('-1'),
      throwsA(
        predicate(
          (e) =>
              e is NegativeNumberException &&
              e.toString() == 'negative numbers not allowed -1',
        ),
      ),
    );
  });

  test('lists all negatives in message', () {
    expect(
      () => StringCalculator().add('2,-4,3,-5'),
      throwsA(
        predicate(
          (e) =>
              e is NegativeNumberException &&
              e.toString() == 'negative numbers not allowed -4,-5',
        ),
      ),
    );
  });

}
