class Animal {
  String cor = "";
  double peso = 0;

  void dormir() {
    print("Dormindo...");
  }
}

class Cao extends Animal {
  void latir() {
    print("Au Au!");
  }
}

class Passaro extends Animal {
  void voar() {
    print("voar voar!");
  }
}

void main() {
  Cao cao = Cao();
  cao.cor = "Cinza";
  print(cao.cor);
  cao.latir();

  Passaro passaro = Passaro();
  passaro.cor = "Amarelo";
  print(passaro.cor);
  passaro.voar();
}