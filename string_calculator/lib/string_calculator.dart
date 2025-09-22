class StringCalculator {

  //! empty string returns 0
  // int add(String numbers) {
  //   return 0;
  // }

  //! Handling single number as input
  // int add(String numbers) {
  //   if (numbers.trim().isEmpty) return 0;
  //   return int.parse(numbers);
  // }

  //! Handling two comma-separated numbers
  int add(String numbers) {
    if (numbers.trim().isEmpty) return 0;
    final parts = numbers.split(',');
    final ints = parts.map(int.parse);
    return ints.fold(0, (a, b) => a + b);
  }
}
