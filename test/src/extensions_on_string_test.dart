import 'package:iranian_national_code/iranian_national_code.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Convert persian/farsi numbers to english',
    () {
      test(
        'It should return `1234567890`',
        () {
          // arrange
          const sampleString = '۱۲۳۴۵۶۷۸۹۰';

          // act
          final result = sampleString.convertPersianToEnglishNumbers();

          // assert
          expect(result, '1234567890');
        },
      );

      test(
        'It should return `1234gf7890`',
        () {
          // arrange
          const sampleString = '۱۲۳۴gf۷۸۹۰';

          // act
          final result = sampleString.convertPersianToEnglishNumbers();

          // assert
          expect(result, '1234gf7890');
        },
      );

      test(
        'It should return `alakimalaki`',
        () {
          // arrange
          const sampleString = 'alakimalaki';

          // act
          final result = sampleString.convertPersianToEnglishNumbers();

          // assert
          expect(result, 'alakimalaki');
        },
      );

      test(
        'It should return ``',
        () {
          // arrange
          const sampleString = '';

          // act
          final result = sampleString.convertPersianToEnglishNumbers();

          // assert
          expect(result, '');
        },
      );

      test(
        'It should return `1234567890`',
        () {
          // arrange
          const sampleString = '1234567890';

          // act
          final result = sampleString.convertPersianToEnglishNumbers();

          // assert
          expect(result, '1234567890');
        },
      );
    },
  );

  group(
    'Various tests for whether the national code is valid or not',
    () {
      test(
        'It should return `false` because the national code is not valid',
        () {
          // arrange
          const sampleNationalCode = '1234567890';

          // act
          final result = sampleNationalCode.isValidNationalCode();

          // assert
          expect(result, false);
        },
      );

      test(
        'It should return `true` because the national code is valid',
        () {
          // arrange
          const sampleNationalCode = '7094145047';

          // act
          final result = sampleNationalCode.isValidNationalCode();

          // assert
          expect(result, true);
        },
      );

      test(
        'It should return `true` because the national code is valid',
        () {
          // arrange
          const sampleNationalCode = '1362450863';

          // act
          final result = sampleNationalCode.isValidNationalCode();

          // assert
          expect(result, true);
        },
      );

      test(
        'It should return `true` because the national code is valid',
        () {
          // arrange
          const sampleNationalCode = '0200214470';

          // act
          final result = sampleNationalCode.isValidNationalCode();

          // assert
          expect(result, true);
        },
      );

      test(
        'It should return `false` because the national code is not valid',
        () {
          // arrange
          const sampleNationalCode = 'chertopert';

          // act
          final result = sampleNationalCode.isValidNationalCode();

          // assert
          expect(result, false);
        },
      );

      test(
        'It should return `false` because the national code is not valid',
        () {
          // arrange
          const sampleNationalCode = '';

          // act
          final result = sampleNationalCode.isValidNationalCode();

          // assert
          expect(result, false);
        },
      );

      test(
        'It should return `false` because the national code is not valid',
        () {
          // arrange
          const sampleNationalCode = '1234kj78';

          // act
          final result = sampleNationalCode.isValidNationalCode();

          // assert
          expect(result, false);
        },
      );

      test(
        'It should return `false` because the national code is not valid',
        () {
          // arrange
          const sampleNationalCode = '1@_;34kj78';

          // act
          final result = sampleNationalCode.isValidNationalCode();

          // assert
          expect(result, false);
        },
      );
    },
  );
}
