void main() {
  final stopwatch = Stopwatch()..start();

  const List<double> faturamentoDiario = [
    7218.0, 5441.22, 0, 2226.01, 16133.02, 838.0, 180.06, 0, 786.0, 11525.15,
    8842.30, 6319.20, 0, 9402.50
  ];

  double menorFaturamento = double.maxFinite;
  double maiorFaturamento = double.minPositive;
  double totalFaturamento = 0;
  int diasFaturamento = 0;

  for (int i = 0; i < faturamentoDiario.length; i++) {
    if (faturamentoDiario[i] > 0) {
      totalFaturamento += faturamentoDiario[i];
      diasFaturamento++;
      if (faturamentoDiario[i] < menorFaturamento) {
        menorFaturamento = faturamentoDiario[i];
      }
      if (faturamentoDiario[i] > maiorFaturamento) {
        maiorFaturamento = faturamentoDiario[i];
      }
    }
  }

  final double mediaFaturamento = totalFaturamento / diasFaturamento;

  int diasAcimaDaMedia = 0;
  
  for (int i = 0; i < faturamentoDiario.length; i++) {
    if (faturamentoDiario[i] > mediaFaturamento) {
      diasAcimaDaMedia++;
    }
  }

  print('Menor faturamento: $menorFaturamento');
  print('Maior faturamento: $maiorFaturamento');
  print('Número de dias com faturamento acima da média: $diasAcimaDaMedia');

  stopwatch.stop();
  print('Execution Time : ${stopwatch.elapsed}');
}
