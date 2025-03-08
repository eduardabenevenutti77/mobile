class Car {
  String modelo;
  
  late int ano;
  
  // fábrica
  factory Car(int ano, String modelo) {
    if (ano < 2000) {
      return Car.antigo(modelo);
    } else {
      return Car.novo(modelo, ano);
    }
  }
  
  Car.antigo(this.modelo) {
   ano = 1980;
  }
  
  Car.novo(this.modelo, this.ano);
  
  //construtor
//   Car(this.modelo,this.ano);
  
  //mostrando informações - método
  void mostrar() {
    print("MODELO --> $modelo");
    print("ANO --> $ano");
  }
}

void main() {
  // instância classe
  Car myCar = Car(2024, "Pulse");
  
  // chamando método
  myCar.mostrar();
  
  print("------------------------------");
  
  Car myCar2 = Car(2016, "Grand Siena");
  myCar2.mostrar();
}