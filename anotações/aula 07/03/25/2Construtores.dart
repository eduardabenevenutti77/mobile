class Car {
  String modelo;
  
  late int ano;
  
  //construtor
  Car(this.modelo,this.ano);
  
  Car.comAnoFuturo(this.modelo) {
    ano = 2025;
  }
  
  //mostrando informações - método
  void mostrar() {
    print("MODELO --> $modelo");
    print("ANO --> $ano");
  }
}

void main() {
  // instância classe
  Car myCar = Car("Pulse", 2024);
  
  // chamando método
  myCar.mostrar();
  
  print("------------------------------");
  
  Car myCar2 = Car.comAnoFuturo("Grand Siena");
  myCar2.mostrar();
}