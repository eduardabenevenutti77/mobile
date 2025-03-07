class Info {
  int valor = 0;
}
void funcao() {
  Info info = Info();
  info.valor = 2;
  print(info.valor);
}
void main() {
  Info info = Info();
  info.valor = 6;
  print(info.valor);
  funcao();
}