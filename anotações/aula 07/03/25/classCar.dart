class Car {
  String modelo;
  int ano;
  
  //construtor
  Car(this.modelo, this.ano);
  
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
}