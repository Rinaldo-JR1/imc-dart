import 'package:imc/imc.dart';

class Paciente {
  String _nome = '';
  double _altura = 0;
  double _peso = 0;

  Paciente(String nome, double altura, double peso) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  @override
  String toString() {
    double imc = Calcular(_peso, _altura);
    String status = Imc(imc);
    return "O paciente $_nome tem a altura de $_altura, peso de $_peso com o IMC: $imc // Status: $status";
  }
}
