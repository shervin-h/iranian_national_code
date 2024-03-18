import 'package:iranian_national_code/iranian_national_code.dart';

void main() {
  print('----- validating the national code -----');
  print(''.isValidNationalCode());
  print('chert'.isValidNationalCode());
  print('7730942860'.isValidNationalCode());
  print('4922652949'.isValidNationalCode());
  print('9743011005'.isValidNationalCode());
  print('9379338031'.isValidNationalCode());
  print('3101111110'.isValidNationalCode());
  print('8760052430'.isValidNationalCode());
  print(''.isValidNationalCode());
  print('AlakiMalaki'.isValidNationalCode());
  print('87600#@_;52430'.isValidNationalCode());

  print('----- convert persian/farsi digits to english -----');
  print('۱۲۳۴۵۶۷۸۹۰'.convertPersianToEnglishNumbers());
  print('۱۲۳۴۵#۶۷۸۹۰'.convertPersianToEnglishNumbers());
  print('۱۲۳۴۵JHkhdui۶۷۸۹۰'.convertPersianToEnglishNumbers());
  print('۱۲34۵۶۷۸۹۰'.convertPersianToEnglishNumbers());

  print('----- generate national code -----');
  final example1 = generateNationalCode();
  print(example1);
  print(example1.isValidNationalCode());

  final example2 = generateNationalCode();
  print(example2);
  print(example2.isValidNationalCode());

  final example3 = generateNationalCode();
  print(example3);
  print(example3.isValidNationalCode());

  final example4 = generateNationalCode();
  print(example4);
  print(example4.isValidNationalCode());

  print('----- generate round national code -----');
  final example5 = generateRoundNationalCode();
  print(example5);
  print(example5.isValidNationalCode());

  final example6 = generateRoundNationalCode();
  print(example6);
  print(example6.isValidNationalCode());

  final example7 = generateRoundNationalCode();
  print(example7);
  print(example7.isValidNationalCode());

  final example8 = generateRoundNationalCode();
  print(example8);
  print(example8.isValidNationalCode());
}
