/*

Exercício - Calculo IMC
 
O (IMC) índice de massa corporal é baseado na altura e peso do indivíduo.
O cálculo é representado por Dividir o peso pela Altura ao quadrado².
Crie uma função que realize o cálculo de IMC.
*/

import 'dart:io';

main() {
  Usuario usuario = Usuario();
  usuario.nome = getNome();
  usuario.peso = getPeso();
  usuario.altura = getAltura();
  print(
    calcularImc(nome: usuario.nome!, peso: usuario.peso!, altura: usuario.altura!),
  );
}

class Usuario {
  String? nome;
  double? peso;
  double? altura;
}

String getNome() {
  print("Qual o seu nome?");
  String? nome = stdin.readLineSync();
  return nome!;
}

double getPeso() {
  print("Qual o seu peso? ");
  String? input = stdin.readLineSync();
  double? peso = double.tryParse(input!);
  return peso!;
}

double getAltura() {
  print("Qual a sua altura? (Em valores com virgula, use ponto) ");
  String? input = stdin.readLineSync();
  double? altura = double.tryParse(input!);
  return altura!;
}

String calcularImc({required String nome, required double peso, required double altura}) {
  double imc = peso / (altura * altura);
  if (imc > 29) {
    return '${nome}, você está com sobrepeso';
  } else {
    return '${nome}, você está magro';
  }
}
