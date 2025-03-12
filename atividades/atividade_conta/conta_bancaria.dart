void main() {
  double saldo = 800;
  double credito = 900;
  double debito = 180;

  print("Valor de Saldo inicial: $saldo\n");

  while (saldo > 0 || credito > 0) {
    if (saldo >= debito) {
      saldo -= debito;
    } else {
      debito -= saldo;
      saldo = 0;
    }

    if (saldo == 0 && credito >= debito) {
      credito -= debito;
    } else if (saldo == 0 && credito > 0) {
      debito -= credito;
      credito = 0;
    }

    print("Valor de Saldo: $saldo");
    print("Valor de Credito: $credito");
    print("Valor de Debito: $debito\n");

    if (saldo == 0 && credito == 0) {
      print("---Sem Fundos---");
      break;
    }
  }
}