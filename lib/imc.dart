import 'dart:math';

double Calcular(double peso, double altura) {
  try {
    var imc = peso / (pow(altura, 2));
    return imc;
  } catch (e) {
    print("Erro ao calcular IMC");
    throw Exception(e);
  }
}

String Imc(double imc) {
  if (imc < 16) {
    return "Magreza grave";
  } else if (imc > 16 && imc < 17) {
    return "Magreza Moderada";
  } else if (imc > 17 && imc < 18.5) {
    return "Magreza leve";
  } else if (imc > 18.5 && imc < 25) {
    return "Saudavel";
  } else if (imc > 25 && imc < 30) {
    return "Sobrepeso";
  } else if (imc > 30 && imc < 35) {
    return "Obesidade grau 1";
  } else if (imc > 35 && imc < 40) {
    return "Obesidade grau 2";
  } else {
    return 'Obesidade grau 3';
  }
}
