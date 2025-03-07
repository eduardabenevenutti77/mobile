class Animal {
  String cor = '';
  double peso = 0;
   void dormir() {
    print("dorme"); 
   }
}

class Cao extends Animal{
//   void latir() {
//     print("latir"); 
//    }
}

class Bird extends Animal{
//   void voar() {
//     print("voar"); 
//    }
}

void main() {
  Cao cao = Cao();
  cao.cor = "Marrom";
  print(cao.cor);
  
  Bird bird = Bird();
  bird.cor = "Azul";
  print(bird.cor);
}