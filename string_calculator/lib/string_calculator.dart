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
  // int add(String numbers) {
  //   if (numbers.trim().isEmpty) return 0;
  //   final parts = numbers.split(',');
  //   final ints = parts.map(int.parse);
  //   return ints.fold(0, (a, b) => a + b);
  // }

  //! Handling any amount with newline delimitter
  // int add(String numbers) {
  //   if (numbers.trim().isEmpty) return 0;
  //   final parts = numbers.split(RegExp(',|\\n'));
  //   final ints = parts.map(int.parse);
  //   return ints.fold(0, (a, b) => a + b);
  // }

  //! custom delimiter syntax //;\\n
  int add(String numbers) {
    if (numbers.trim().isEmpty) return 0;

    var nums = numbers;
    var pattern = ',|\\n';

    if (nums.startsWith('//')) {
      final newlineIndex = nums.indexOf('\\n');
      final delimiter = nums.substring(2, newlineIndex);
      pattern = '${RegExp.escape(delimiter)}|,|\\n';
      nums = nums.substring(newlineIndex + 1);
    }

    final parts = nums.split(RegExp(pattern));
    final ints = parts.where((p) => p.isNotEmpty).map(int.parse);
    return ints.fold(0, (a, b) => a + b);
  }
}
