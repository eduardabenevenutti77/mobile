import 'dart:io'; 
void main() {
  Duration duration = Duration(seconds: 1); // I discovered it :)
  for (int i = 10; i > 0; i--) {
    print("$i Segundos");
    sleep(duration);
  }
}
