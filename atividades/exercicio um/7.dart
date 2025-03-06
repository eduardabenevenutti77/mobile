List vogals = ["a", "e", "i", "o", "u"];
String word = "Dart é incrível";
int vogalsCounter = 0;

void main(){
  for(int i = 0; i < word.length; i++){
    for(int j = 0; j < vogals.length; j++){
      if(word[i] == vogals[j]){
        vogalsCounter++;
      }
    }
  }

  print("Número de vogais na frase: $vogalsCounter");
}