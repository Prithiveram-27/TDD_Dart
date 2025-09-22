# String Calculator in Dart

This is a Dart implementation of a String Calculator demonstrating **Test-Driven Development (TDD)**.  
The project shows how the code evolves step-by-step through tests, handling different input scenarios and edge cases.

---

## Features

- Add numbers provided as a string:
  - Empty string returns `0`
  - Single number returns itself
  - Two or more numbers separated by commas `,` or newlines `\n`
  - Supports custom single-character delimiter: `//<delimiter>\n<numbers>`
  - Throws exception for negative numbers, listing all of them

---

## Example Usage

```dart
final calc = StringCalculator();

calc.add('');           // 0
calc.add('1');          // 1
calc.add('1,2,3');      // 6
calc.add('1\n2,3');     // 6
calc.add('//;\n1;2');   // 3

calc.add('2,-4,3,-5');  // throws NegativeNumberException
 
