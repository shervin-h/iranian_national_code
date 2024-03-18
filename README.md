
# Iranian NationalCode
---

A library for validating the national code and converting Persian numbers to English


## Install Package
---

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
---

Import it:
```dart
import 'package:iranian_national_code/iranian_national_code.dart';
```

Now in your Dart code, you can use:
```dart
fianl result = '1234567890'.isValidNationalCode();
if (result) {
  // national code is valid
} else {
  // national code is not valid
}
```

Read the unit tests under test, or see code example below:

validating the national code
```dart
fianl result = '3974017844'.isValidNationalCode();
print(result); // true

fianl result = '7730942860'.isValidNationalCode();
print(result); // true

fianl result = '12345KjHiF67890'.isValidNationalCode();
print(result); // false

fianl result = ''.isValidNationalCode();
print(result); // false

fianl result = '123456789012345'.isValidNationalCode();
print(result); // false

fianl result = '12@4561;_345'.isValidNationalCode();
print(result); // false
```

convert persian/farsi digits to english
```dart
fianl result = '۱۲۳۴۵۶۷۸۹۰'.convertPersianToEnglishNumbers();
print(result); // '1234567890'

fianl result = '۱۲۳۴Fg۵۶۷۸۹۰'.convertPersianToEnglishNumbers();
print(result); // '1234Fg567890'

fianl result = ''.convertPersianToEnglishNumbers();
print(result); // ''
```
