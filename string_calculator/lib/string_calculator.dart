class StringCalculator {

  //! empty string returns 0
  // int add(String numbers) {
  //   return 0;
  // }

  int add(String numbers) {
    if (numbers.trim().isEmpty) return 0;
    return int.parse(numbers);
  }
}
