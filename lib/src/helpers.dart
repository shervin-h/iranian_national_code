import 'dart:math';

/// ## [generateNationalCode] Function Documentation
///
/// The `generateNationalCode` function generates a random national code, which is commonly used
/// in some countries as an identification number for citizens. The generated national code
/// consists of 10 digits and is calculated based on a specific algorithm.
///
/// Algorithm:
///
/// 1. Generate a list to store the digits of the national code.
/// 2. Generate random digits from 0 to 9 and add them to the list, assigning weights
///    from 10 to 2, inclusive.
/// 3. Calculate the sum of the products of each digit and its weight.
/// 4. Calculate the remainder of the sum divided by 11.
/// 5. If the remainder is less than 2, add it to the list; otherwise, add the result of
///    subtracting the remainder from 11 to the list.
/// 6. Return the generated national code as a string by joining the digits of the list.
///
/// Returns:
///
/// A string representing the generated national code.
///
/// Usage Example:
///
/// ```dart
/// final nationalCode = generateNationalCode();
/// print('Generated National Code: $nationalCode');
/// ```
///
/// Notes:
///
/// - This function is commonly used in scenarios where a random national code is required,
///   such as generating test data or simulating user registration
String generateNationalCode() {
  List<int> list = [];
  int sum = 0;

  for (int i = 10; i > 1; i--) {
    int j = Random().nextInt(10);
    list.add(j);
    sum += j * i;
  }

  int s = sum % 11;
  if (s < 2) {
    list.add(s);
  } else if (s >= 2) {
    list.add(11 - s);
  }

  return list.join();
}

/// ## [generateRoundNationalCode] Function Documentation
///
/// The `generateRoundNationalCode` function generates a random national code, similar to `generateNationalCode`,
/// with an additional check to ensure that the generated code has at least two different digits.
///
/// Algorithm:
///
/// 1. Generate a list to store the digits of the national code.
/// 2. Generate random digits from 0 to `j`, inclusive, where `j` initially equals 10 and decreases
///    with each iteration of the loop.
/// 3. Calculate the sum of the products of each digit and its weight.
/// 4. Calculate the remainder of the sum divided by 11.
/// 5. If the remainder is less than 2, add it to the list; otherwise, add the result of
///    subtracting the remainder from 11 to the list.
/// 6. Check if all digits in the list are equal. If so, recursively call the function again
///    to generate a new national code until there are at least two different digits.
/// 7. Return the generated national code as a string by joining the digits of the list.
///
/// Returns:
///
/// A string representing the generated national code.
///
/// Usage Example:
///
/// ```dart
/// final nationalCode = generateRoundNationalCode();
/// print('Generated National Code: $nationalCode');
/// ```
///
/// Notes:
///
/// - This function is useful in scenarios where uniqueness or diversity of digits in the
///   generated national code is desired, such as when simulating real-world data or
///   generating test cases.
String generateRoundNationalCode() {
  List<int> list = [];
  int sum = 0;
  int j = 10;

  for (int i = 10; i > 1; i--) {
    j = Random().nextInt(j < 2 ? 2 : j);
    list.add(j);
    sum += j * i;
  }

  int s = sum % 11;
  if (s < 2) {
    list.add(s);
  } else if (s >= 2) {
    list.add(11 - s);
  }

  if (list.where((a) => a != list[0]).isEmpty) {
    return generateRoundNationalCode();
  }

  return list.join();
}
