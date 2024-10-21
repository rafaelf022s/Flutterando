/*

Exercício - Sucessão de Fibonacci

Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci),
é uma sequência de números inteiros, começando normalmente por 0 e 1, na qual cada termo 
subsequente corresponde à soma dos dois anteriores. A sequência recebeu o nome do matemático 
italiano Leonardo de Pisa, mais conhecido por Fibonacci, 
que descreveu, no ano de 1202, o crescimento de uma população de coelhos, a partir desta. Esta sequência já era, no entanto, conhecida na antiguidade.

 */
void main() {
  int n = 10; 
  print('Sequência de Fibonacci com $n termos:');

  for (int i = 0; i < n; i++) {
    print(fibonacci(i));
  }
}

int fibonacci(int num) {
  if (num == 0) return 0;
  if (num == 1) return 1;

  return fibonacci(num - 1) + fibonacci(num - 2);
}
