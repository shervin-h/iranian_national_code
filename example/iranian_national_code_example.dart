import 'package:iranian_national_code/iranian_national_code.dart';

void main() {
  // validating the national code
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

  // convert persian/farsi digits to english
  print('۱۲۳۴۵۶۷۸۹۰'.convertPersianToEnglishNumbers());
  print('۱۲۳۴۵#۶۷۸۹۰'.convertPersianToEnglishNumbers());
  print('۱۲۳۴۵JHkhdui۶۷۸۹۰'.convertPersianToEnglishNumbers());
  print('۱۲34۵۶۷۸۹۰'.convertPersianToEnglishNumbers());
}
