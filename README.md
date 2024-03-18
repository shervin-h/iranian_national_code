# Iranian NationalCode

A library for validating the national code and converting Persian numbers to English


## Install Package

Add the following line to your `pubspec.yaml` under `dependencies`:

```yaml
dependencies:
  iranian_national_code: ^1.0.0
```

Then run:

```
flutter pub get
```

## Usage

Import it:
```dart
import 'package:iranian_national_code/iranian_national_code.dart';
```

Now in your Dart code, you can use:
```dart
final result = '1234567890'.isValidNationalCode();
if (result) {
  // national code is valid
} else {
  // national code is not valid
}
```

Read the unit tests under test, or see code example below:

validating the national code
```dart
final result = '3974017844'.isValidNationalCode();
print(result); // true

final result = '7730942860'.isValidNationalCode();
print(result); // true

final result = '12345KjHiF67890'.isValidNationalCode();
print(result); // false

final result = ''.isValidNationalCode();
print(result); // false

final result = '123456789012345'.isValidNationalCode();
print(result); // false

final result = '12@4561;_345'.isValidNationalCode();
print(result); // false
```

convert persian/farsi digits to english
```dart
final result = '۱۲۳۴۵۶۷۸۹۰'.convertPersianToEnglishNumbers();
print(result); // '1234567890'

final result = '۱۲۳۴Fg۵۶۷۸۹۰'.convertPersianToEnglishNumbers();
print(result); // '1234Fg567890'

final result = ''.convertPersianToEnglishNumbers();
print(result); // ''
```

by using this package you can generate national code
```dart
final example1 = generateNationalCode();
print(example1); // 2365960464
print(example1.isValidNationalCode()); // true

final example2 = generateNationalCode();
print(example2); // 1168880971
print(example2.isValidNationalCode()); // true
```

You can also generate a round national code and validate it
```dart
final example3 = generateRoundNationalCode();
print(example3); // 1000010104
print(example3.isValidNationalCode()); // true

final example4 = generateRoundNationalCode();
print(example4); // 3101001102
print(example4.isValidNationalCode()); // true
```

### by Shervin Hassanzadeh
contact me: shervin.hz07@gmail.com
