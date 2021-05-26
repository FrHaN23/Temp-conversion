import 'dart:io';

void main(List<String> arguments) {
  print('Konversi Suhu');
  print('1. Celsius-kelvin \n2. Celsius-Farenheit \n3. Celsius-Réaumur');
  print('4. Farenheit-kelvin \n5. Ferenheit-Celsius \n6. Ferenheit-Réaumur');
  print('7. kelvin-Celsius \n8. Kelvin-Frenheit \n9. kelvin-Réaumur');

  stdout.write('Masukkan konversi yang anda inginkan: ');
  var pilih = int.parse(stdin.readLineSync().toString());
  stdout.write('Masukkan suhu:');
  var inSuhu = double.parse(stdin.readLineSync().toString());

  switch (pilih) {
    case 1:
      {
        var konversi = inSuhu + 273.15;
        print('Suhu $inSuhu derajat Celsius = $konversi derajat kelvin');
        break;
      }
    case 2:
      {
        var konversi = inSuhu * 9 / 5 + 32;
        print('Suhu $inSuhu derajat Celsius = $konversi derajat farenheit');
        break;
      }
    case 3:
      {
        var konversi = inSuhu * 4 / 5;
        print('Suhu $inSuhu derajat Celsius = $konversi derajat Réaumur');
        break;
      }
    case 4:
      {
        var konversi = (inSuhu + 459.67) * 5 / 9;
        print('Suhu $inSuhu derajat Farenheit = $konversi derajat Kelvin');
        break;
      }
    case 5:
      {
        var konversi = (inSuhu - 32) * 5 / 9;
        print('Suhu $inSuhu derajat Farenheit = $konversi derajat Celsius');
        break;
      }
    case 6:
      {
        var konversi = (inSuhu - 32) * 4 / 9;
        print('Suhu $inSuhu derajat Farenheit = $konversi derajat Réaumur');
        break;
      }
    case 7:
      {
        var konversi = inSuhu - 273.15;
        print('$inSuhu Kelvin = $konversi derajat Celsius');
        break;
      }
    case 8:
      {
        var konversi = inSuhu * 9 / 5 - 459.67;
        print('$inSuhu Kelvin = $konversi derajat Farenheit');
        break;
      }
    case 9:
      {
        var konversi = (inSuhu - 273.15) * 4 / 5;
        print('$inSuhu Kelvin = $konversi derajat Réaumur');
        break;
      }
    default:
      {
        print('Pilihan anda salah, coba lagi');
        break;
      }
  }
}
