import 'package:iranian_national_code/iranian_national_code.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Generate national code',
    () {
      test(
        'Checking the validity of the generated national code',
         () {
          // act
          final generatedNationalCode = generateNationalCode();
          final result = generatedNationalCode.isValidNationalCode();

          // assert
          expect(result, true);
        },
      );

      test(
        'Checking the validity of the generated national code',
        () {
          // act
          final generatedNationalCode = generateNationalCode();
          final result = generatedNationalCode.isValidNationalCode();

          // assert
          expect(result, true);
        },
      );

      test(
        'Checking the validity of the generated national code',
        () {
          // act
          final generatedNationalCode = generateNationalCode();
          final result = generatedNationalCode.isValidNationalCode();

          // assert
          expect(result, true);
        },
      );

      test(
        'Checking the validity of the generated national code',
         () {
          // act
          final generatedNationalCode = generateNationalCode();
          final result = generatedNationalCode.isValidNationalCode();

          // assert
          expect(result, true);
        },
      );

    },
  );

  group(
    'Generate round national code',
    () {
      test(
        'Checking the validity of the generated round national code',
        () {
          // act
          final generatedNationalCode = generateNationalCode();
          final result = generatedNationalCode.isValidNationalCode();

          // assert
          expect(result, true);
        },
      );

      test(
        'Checking the validity of the generated round national code',
        () {
          // act
          final generatedNationalCode = generateNationalCode();
          final result = generatedNationalCode.isValidNationalCode();

          // assert
          expect(result, true);
        },
      );

      test(
        'Checking the validity of the generated round national code',
        () {
          // act
          final generatedNationalCode = generateNationalCode();
          final result = generatedNationalCode.isValidNationalCode();

          // assert
          expect(result, true);
        },
      );

      test(
        'Checking the validity of the generated round national code',
        () {
          // act
          final generatedNationalCode = generateNationalCode();
          final result = generatedNationalCode.isValidNationalCode();

          // assert
          expect(result, true);
        },
      );
    },
  );
}