import 'dart:convert';
import 'dart:io';

class Inputs {
  static double InputDouble() {
    var line = stdin.readLineSync(encoding: utf8) ?? '';
    try {
      return double.parse(line);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
