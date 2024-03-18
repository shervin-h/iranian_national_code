extension PersianToEnglishNumberConversion on String {
  /// ## [convertPersianToEnglishNumbers] Method
  ///
  /// The [convertPersianToEnglishNumbers] method is a custom method for converting Persian numeral characters to their English equivalents.
  ///
  /// ### Method Details
  ///
  /// - The method creates a map [persianToEnglish] that maps Persian numeral characters to their English equivalents.
  /// - It uses [replaceAllMapped] method to replace Persian numeral characters in the string with their English equivalents based on the defined map.
  ///
  /// ### Example Usage
  ///
  /// ```dart
  /// String persianNumber = '۱۲۳۴۵۶۷۸۹۰';
  /// String englishNumber = persianNumber.convertPersianToEnglishNumbers(); // Result: '1234567890'
  /// ```
  String convertPersianToEnglishNumbers() {
    final Map<String, String> persianToEnglish = {
      '۰': '0',
      '۱': '1',
      '۲': '2',
      '۳': '3',
      '۴': '4',
      '۵': '5',
      '۶': '6',
      '۷': '7',
      '۸': '8',
      '۹': '9',
    };

    return replaceAllMapped(
      RegExp('[۰-۹]'),
      (match) {
        final matchedString = match.group(0);
        return persianToEnglish[matchedString]!;
      },
    );
  }
}

extension NationalCode on String? {
  /// ## [isValidNationalCode] Method
  ///
  /// The [isValidNationalCode] method is a custom method used to validate an Iranian national ID (Meli code).
  ///
  /// ### Method Details
  ///
  /// - The method first converts any Persian numeral characters in the input to their English equivalents using the [convertPersianToEnglishNumbers] method.
  /// - It then checks if the length of the code is at least 8 characters and if it is not equal to zero.
  /// - It further processes the code to ensure it conforms to the structure of an Iranian national ID.
  /// - Finally, it computes the validation digit and compares it with the last digit of the code to determine validity.
  ///
  /// ### Example Usage
  ///
  /// ```dart
  /// String nationalCode = '۰۰۰۰۰۰۰۰۰۰';
  /// bool isValid = nationalCode.isValidNationalCode(); // Result: false
  /// ```
  bool isValidNationalCode() {
    if (this != null) {
      if (this!.isEmpty) return false;

      try {
        int.parse(this!);
      } catch (e) {
        return false;
      }

      var code = this!.convertPersianToEnglishNumbers();
      var codeLength = code.length;

      if (codeLength < 8 || int.parse(code, radix: 10) == 0) return false;
      code = ('0000$code').substring(codeLength + 4 - 10);
      if (int.parse(code.substring(3, 9), radix: 10) == 0) return false;
      var c = int.parse(code.substring(9, 10), radix: 10);
      var s = 0;
      for (var i = 0; i < 9; i++) {
        s += int.parse(code.substring(i, i + 1), radix: 10) * (10 - i);
      }
      s = s % 11;
      return (s < 2 && c == s) || (s >= 2 && c == (11 - s));
    }
    return false;
  }
}
